// Include standard headers
#include <cstdlib>

// Include GLEW (always before glfw)
#include <GL/glew.h>

// Include GLFW
#include <glfw3.h>

// Include GLM
#include <glm/glm.hpp>
#include <glm/gtc/matrix_transform.hpp>

#include <common/shader.hpp>
#include <common/controls.hpp>

#include "rectangle.hpp"
#include <vector>
#include <set>
#include <iostream>
#include <ctime>
// #include <unistd.h>	// usleep()
#include <sstream>
#include <string>

void mouseButtonCallback(GLFWwindow * window, int button, int action, int mods);
void updateFPSCounter(GLFWwindow * window);

GLFWwindow* window;
std::vector<Rectangle> rectangles;
bool endSimulation = false;

int main( void )
{

	// init random seed equal to current time
	std::srand(std::time(0));

	const unsigned MAX_NR_RECTANGLES = 100;
	unsigned nrRectanglesAlive = 0;

	// windows size
	int windowWidth = 600;
	int windowHeight = 600;

	// Initialise GLFW
	if(!glfwInit()) {
		std::cerr << "Failed to initialize GLFW" << std::endl;
		return -1;
	}

	glfwWindowHint(GLFW_SAMPLES, 4);
	glfwWindowHint(GLFW_CONTEXT_VERSION_MAJOR, 3);
	glfwWindowHint(GLFW_CONTEXT_VERSION_MINOR, 3);
	glfwWindowHint(GLFW_OPENGL_PROFILE, GLFW_OPENGL_CORE_PROFILE);

	// Open a window and create its OpenGL context
	// window = glfwCreateWindow( 1024, 768, "Tutorial 03 - Matrices", NULL, NULL);
	window = glfwCreateWindow(windowWidth, windowHeight, "Mondrian", NULL, NULL);
	if(window == NULL) {
		std::cerr << "Failed to open GLFW window. If you have an Intel GPU, they are not 3.3 compatible. Try the 2.1 version of the tutorials." << std::endl;
		glfwTerminate();
		return -1;
	}
	glfwMakeContextCurrent(window);

	// Initialize GLEW
	glewExperimental = true; // Needed for core profile
	if (glewInit() != GLEW_OK) {
		std::cerr << "Failed to initialize GLEW" << std::endl;
		return -1;
	}

	// Ensure we can capture the escape key being pressed below
	glfwSetInputMode(window, GLFW_STICKY_KEYS, GL_TRUE);
	glfwSetMouseButtonCallback(window, mouseButtonCallback);

	// white background
	glm::vec4 whiteColor (1.0f, 1.0f, 1.0f, 0.0f);
	glClearColor(whiteColor.r, whiteColor.g, whiteColor.b, whiteColor.a);

	// nr rectangles * 2 triangles each * 3 vertices * 4 floats
	float cpuBufferDataPoints[MAX_NR_RECTANGLES * 2 * 3 * 4];
	float cpuBufferColors[MAX_NR_RECTANGLES * 2 * 3 * 4];
	float *cpuBufferLines;

	// Create and compile our GLSL program from the shaders
	GLuint rectangleProgram = LoadShaders( "rectangleVertexShader.glsl", "rectangleFragmentShader.glsl" );
	GLuint lineProgram = LoadShaders( "lineVertexShader.glsl", "lineFragmentShader.glsl" );

	// Use our shader (it's not required to be using a program to bind VAOs)
	glUseProgram(rectangleProgram);

	// VAOs
	GLuint rectangleVAO;
	GLuint lineVAO;
	glGenVertexArrays(1, &rectangleVAO);
	glGenVertexArrays(1, &lineVAO);
	glBindVertexArray(rectangleVAO);

	// Get a handle for our "MVP" uniform
	GLuint MatrixID = glGetUniformLocation(rectangleProgram, "MVP");

	// left, right, bottom, top, angle1, angle2
	glm::mat4 Projection = glm::ortho(-10.0f, 10.0f, -10.0f, 10.0f,1.0f,100.0f); // In world coordinates
	
	// Camera matrix
	glm::mat4 View = glm::lookAt(
								glm::vec3(0,0,2), // Camera is at (4,3,3), in World Space
								glm::vec3(0,0,0), // and looks at the origin
								glm::vec3(0,1,0)  // Head is up (set to 0,-1,0 to look upside-down)
						   );

	GLuint rectangleVertexBuffer;
	glGenBuffers(1, &rectangleVertexBuffer);
	glBindBuffer(GL_ARRAY_BUFFER, rectangleVertexBuffer);
	glEnableVertexAttribArray(0);
	glVertexAttribPointer(
		0,                  // attribute. No particular reason for 0, but must match the layout in the shader.
		4,                  // size
		GL_FLOAT,           // type
		GL_FALSE,           // normalized?
		0,                  // stride
		(void*)0            // array buffer offset
	);

	GLuint rectangleColorBuffer;
	glGenBuffers(1, &rectangleColorBuffer);
	glBindBuffer(GL_ARRAY_BUFFER, rectangleColorBuffer);
	glEnableVertexAttribArray(1);
	glVertexAttribPointer(
		1,                  // attribute. No particular reason for 0, but must match the layout in the shader.
		4,                  // size
		GL_FLOAT,           // type
		GL_FALSE,           // normalized?
		0,                  // stride
		(void*)0            // array buffer offset
	);

	glBindVertexArray(lineVAO);
	GLuint lineVertexBuffer;
	glGenBuffers(1, &lineVertexBuffer);
	glBindBuffer(GL_ARRAY_BUFFER, lineVertexBuffer);
	glEnableVertexAttribArray(0);
	glVertexAttribPointer(
		0,                  // attribute. No particular reason for 0, but must match the layout in the shader.
		2,                  // size
		GL_FLOAT,           // type
		GL_FALSE,           // normalized?
		0,                  // stride
		(void*)0            // array buffer offset
	);

	glBindVertexArray(rectangleVAO);


	std::set<int> verticalLines;
	std::set<int> horizontalLines;
	unsigned nrLines = 0;

	unsigned simulationTime = 0;
	bool justEnded = true;
	
	do {

		// update window's title to show fps
		updateFPSCounter(window);

		// Clear the screen
		glClear(GL_COLOR_BUFFER_BIT);

		// update viewport 
		glfwGetWindowSize(window, &windowWidth, &windowHeight);
		glViewport(0, 0, windowWidth, windowHeight);	// (x,y) offset from lower left; (width, height)

		// every 75 steps, create a new rectangle
		if (simulationTime % 75 == 0 && !endSimulation && nrRectanglesAlive < MAX_NR_RECTANGLES) {
			// create rectangle
			Rectangle rectangle;
			// insert rectangle into array
			rectangles.push_back(rectangle);
			nrRectanglesAlive++;
		}

		// update cpu buffers

		// fill up new cpu position buffers
		float rectangleCoords[2 * 3 * 4];
		unsigned coordCounter = 0;
		for (unsigned i = 0; i < rectangles.size(); i++) {
			rectangles[i].getCoords(rectangleCoords);
			for (unsigned j = 0; j < 2*3*4; j++) {
				cpuBufferDataPoints[coordCounter] = rectangleCoords[j];
				coordCounter++;
			}
		}

		// fill up new cpu colors buffers
		float rectangleColorComponents[2 * 3 * 4];
		coordCounter = 0;
		for (unsigned i = 0; i < rectangles.size(); i++) {
			rectangles[i].getColorComponents(rectangleColorComponents);
			for (unsigned j = 0; j < 2*3*4; j++) {
				cpuBufferColors[coordCounter] = rectangleColorComponents[j];
				coordCounter++;
			}
		}

		glUseProgram(rectangleProgram);
		glBindVertexArray(rectangleVAO);

		// transfer data to position and color buffers
		glBindBuffer(GL_ARRAY_BUFFER, rectangleVertexBuffer);
		glBufferData(GL_ARRAY_BUFFER, sizeof(float) * rectangles.size() * 2 * 3 * 4, cpuBufferDataPoints, GL_STREAM_DRAW);
		// glBufferData(GL_ARRAY_BUFFER, sizeof(float) * rectangles.size() * 2 * 3 * 4, NULL, GL_STREAM_DRAW);
		// glBufferSubData(GL_ARRAY_BUFFER, 0, sizeof(float) * rectangles.size() * 2 * 3 * 4, cpuBufferDataPoints);
		// if (endSimulation && !justEnded) {
		//	// std::cout << "transfering lines data points...." << std::endl;
		//	glBufferSubData(GL_ARRAY_BUFFER, sizeof(float) * rectangles.size() * 2 * 3 * 4, sizeof(float) * nrLines * 2 * 4, cpuBufferLines);
		// }

		glBindBuffer(GL_ARRAY_BUFFER, rectangleColorBuffer);
		glBufferData(GL_ARRAY_BUFFER, sizeof(float) * rectangles.size() * 2 * 3 * 4, cpuBufferColors, GL_STREAM_DRAW);
		// glBufferData(GL_ARRAY_BUFFER, sizeof(float) * rectangles.size() * 2 * 3 * 4, NULL, GL_STREAM_DRAW);
		// glBufferSubData(GL_ARRAY_BUFFER, 0, sizeof(float) * rectangles.size() * 2 * 3 * 4, cpuBufferColors);

		// draw rectangles
		glDrawArrays(GL_TRIANGLES, 0, rectangles.size()*2*3); // 3 indices starting at 0 -> 1 triangle

		for (unsigned i = 0; i < rectangles.size(); i++) {
			// std::cout << "updating rectangle id: " << i << std::endl;
			rectangles[i].updateModel();
			if (rectangles[i].shouldBeAlive()) {
				glm::mat4 Model = rectangles[i].getModel();
				glm::mat4 MVP = Projection * View * Model;
				// glm::mat4 MVP = Model;
				glUniformMatrix4fv(MatrixID, 1, GL_FALSE, &MVP[0][0]);
				// Draw 1 rectangle (2 triangles, 3 vertices each)
				// glDrawArrays(GL_LINES, i*2*3, 2*3); // 3 indices starting at 0 -> 1 triangle
			} else {
				// std::cout << "rectangle " << i << " is dead" << std::endl;
			}
		}

		if (endSimulation && !justEnded) {
			// std::cout << "drawing lines..." << std::endl;
			glm::mat4 MVP = Projection * View * glm::mat4(1.0f);
			glUniformMatrix4fv(MatrixID, 1, GL_FALSE, &MVP[0][0]);
			glDrawArrays(GL_LINES, rectangles.size()*2*3, nrLines * 2); // 3 indices starting at 0 -> 1 triangle
		}

		for (std::vector<Rectangle>::iterator it = rectangles.begin(); it != rectangles.end();) {
			if (it->isAlive()) {
				it++;
			} else {
				it = rectangles.erase(it);
			}
		}

		if (endSimulation) {
			// load data in cpuBufferLines just the very first time
			if (justEnded) {
				std::cout << "creating lines..." << std::endl;
				justEnded = false;

				// get vertical and horizontal coords of every line that should be drawn
				for (unsigned i = 0; i < rectangles.size(); i++) {
					int left = rectangles[i].getLeft();
					int right = rectangles[i].getRight();
					int bottom = rectangles[i].getBottom();
					int top = rectangles[i].getTop();
					verticalLines.insert(left);
					verticalLines.insert(right);
					horizontalLines.insert(bottom);
					horizontalLines.insert(top);
				}

				unsigned nrVerticalLines = verticalLines.size();
				unsigned nrHorizontalLines = horizontalLines.size();
				nrLines = nrVerticalLines + nrHorizontalLines;
				std::cout << "nr lines to draw: " << nrLines << std::endl;
				// 1 line = 2 points each; 1 point = 4 coord each;
				cpuBufferLines = new float[nrLines * 2 * 4];
				unsigned counter = 0;
				for (std::set<int>::iterator it = verticalLines.begin(); it != verticalLines.end(); it++) {
					// first point
					cpuBufferLines[counter++] = *it;	// x
					cpuBufferLines[counter++] = 10;		// y
					// second point
					cpuBufferLines[counter++] = *it;	// x
					cpuBufferLines[counter++] = -10;	// y
					// std::cout << "first line: " << std::endl;
					// std::cout << "(" << *it << "," << 10 << "," << 0 << "," << 1 << ")" << std::endl;
					// std::cout << "(" << *it << "," << -10 << "," << 0 << "," << 1 << ")" << std::endl;
				}

				for (std::set<int>::iterator it = horizontalLines.begin(); it != horizontalLines.end(); it++) {
					// first point
					cpuBufferLines[counter++] = -10;	// x
					cpuBufferLines[counter++] = *it;	// y
					// second point
					cpuBufferLines[counter++] = 10;		// x
					cpuBufferLines[counter++] = *it;	// y
				}
			}
		}

		// Swap buffers
		glfwSwapBuffers(window);
		glfwPollEvents();
		// usleep(500000);
		// usleep(100000);

		simulationTime++;

	} // Check if the ESC key was pressed or the window was closed
	while( glfwGetKey(window, GLFW_KEY_ESCAPE ) != GLFW_PRESS &&
		   glfwWindowShouldClose(window) == 0 );


	glBindVertexArray(rectangleVAO);
	glDisableVertexAttribArray(0);
	glDisableVertexAttribArray(1);

	glBindVertexArray(lineVAO);
	glDisableVertexAttribArray(0);

	// Cleanup VBO and shader
	glDeleteBuffers(1, &rectangleVertexBuffer);
	glDeleteBuffers(1, &rectangleColorBuffer);
	glDeleteBuffers(1, &lineVertexBuffer);
	glDeleteProgram(rectangleProgram);
	glDeleteProgram(lineProgram);
	glDeleteVertexArrays(1, &rectangleVAO);
	glDeleteVertexArrays(1, &lineVAO);

	// Close OpenGL window and terminate GLFW
	glfwTerminate();

	delete [] cpuBufferLines;		// make sure new was executed, i.e: right click event

	return 0;
}

void mouseButtonCallback(GLFWwindow * window, int button, int action, int mods)
{
	int windowWidth;
	int windowHeight;
	if (button == GLFW_MOUSE_BUTTON_LEFT && action == GLFW_PRESS) {
		double xpos, ypos;
		glfwGetCursorPos(window, &xpos, &ypos);
		// std::cout << "click on: " << xpos << " " << ypos << std::endl;
		glfwGetWindowSize(window, &windowWidth, &windowHeight);

		// normalized device coordinates
		double ndcx = 2.0 * xpos / windowWidth - 1.0;
		double ndcy = 1.0 - (2.0 * ypos) / windowHeight;

		// std::cout << "(" << ndcx << "," << ndcy << ")" << std::endl;

		// world coordinates
		double worldx = ndcx * 10;
		double worldy = ndcy * 10;

		// std::cout << "(" << worldx << "," << worldy << ")" << std::endl;
		// usleep(3000000);

		for (unsigned i = 0; i < rectangles.size(); i++) {
			rectangles[i].checkPinned(worldx, worldy);
		}
	}

	if (button == GLFW_MOUSE_BUTTON_RIGHT && action == GLFW_PRESS) {
		endSimulation = true;
		std::cout << "right click" << std::endl;
	}
}

void updateFPSCounter(GLFWwindow * window)
{
	static double previousTime = glfwGetTime();
	static int frameCount = 0;
	double currentTime = glfwGetTime();
	double elapsedTime = currentTime - previousTime;

	// take averages every 0.25 seconds
	if (elapsedTime > 0.25) {
		previousTime = currentTime;
		double fps = static_cast<double>(frameCount) / elapsedTime;
		std::stringstream ss;
		ss << "Mondrian @fps(" << fps << ")";
		glfwSetWindowTitle(window, ss.str().c_str());
		frameCount = 0;
	}

	frameCount++;
}
