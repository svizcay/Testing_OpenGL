#include "rectangle.hpp"
#include <iostream>
#include <glm/gtc/matrix_transform.hpp>
#include <cstdlib>
#include <ctime>

const float Rectangle::surfaceSize = 1;
unsigned Rectangle::counter = 0;

Rectangle::Rectangle()
{
	id = counter;
	proportion = getRandomProportion();	// set it random
	color = getRandomColor();			// set it random among fixed values

	position = glm::vec4(0, 0, 0, 1);

	scaleMatrix = glm::scale(glm::mat4(1), glm::vec3(1, 1, 1));
	rotationMatrix = glm::rotate(glm::mat4(1), 0.0f, glm::vec3(0, 0, 1));
	translationMatrix = glm::translate(glm::mat4(1), glm::vec3(-10, 0, 0));
	// modelMatrix = translationMatrix * rotationMatrix * scaleMatrix;
	modelMatrix = translationMatrix * rotationMatrix * scaleMatrix * glm::mat4(1);

	isPinned = false;
	isDead = false;
	counter++;

	// rectangle's vertices (object space) [-1:1]
	float ratio = proportion.x / proportion.y;
	float scaleFactor = 0;
	if (ratio > 1) {
		scaleFactor = 2 / proportion.x;
	} else {
		scaleFactor = 2 / proportion.y;
	}
	float halfx = proportion.x / 2.0;
	float halfy = proportion.y / 2.0;
	float scaledHalfx = scaleFactor * halfx;
	float scaledHalfy = scaleFactor * halfy;
	vertexa = glm::vec4(-scaledHalfx, scaledHalfy, 0, 1);
	vertexb = glm::vec4(scaledHalfx, scaledHalfy, 0, 1);
	vertexc = glm::vec4(-scaledHalfx, -scaledHalfy, 0, 1);
	vertexd = glm::vec4(scaledHalfx, -scaledHalfy, 0, 1);
}

void Rectangle::getCoords(float * coords)
{
	unsigned coordCounter = 0;
	for (unsigned i = 0; i < 4; i++) {
		coords[coordCounter] = vertexa[i];
		coordCounter++;
	}
	for (unsigned i = 0; i < 4; i++) {
		coords[coordCounter] = vertexb[i];
		coordCounter++;
	}
	for (unsigned i = 0; i < 4; i++) {
		coords[coordCounter] = vertexc[i];
		coordCounter++;
	}
	for (unsigned i = 0; i < 4; i++) {
		coords[coordCounter] = vertexc[i];
		coordCounter++;
	}
	for (unsigned i = 0; i < 4; i++) {
		coords[coordCounter] = vertexb[i];
		coordCounter++;
	}
	for (unsigned i = 0; i < 4; i++) {
		coords[coordCounter] = vertexd[i];
		coordCounter++;
	}
}

// has to return (2 triangle * 3 vertex * 4 floats) floats
void Rectangle::getColorComponents(float * colorComponents)
{
	for (unsigned i = 0; i < 2 * 3 * 4; i++) {
		colorComponents[i] = color[i%4];
		// if (i % 4 == 0) std::cout << std::endl;
		// std::cout << colorComponents[i] << " ";
	}
}

glm::mat4 Rectangle::getModel()
{
	return modelMatrix;

}

glm::vec4 Rectangle::getRandomColor()
{
	float red = std::rand() * 1.0 / RAND_MAX;
	float green = std::rand() * 1.0 / RAND_MAX;
	float blue = std::rand() * 1.0 / RAND_MAX;
	glm::vec4 color (red, green, blue, 1);
	std::cout << color.x << " " << color.y << " " << color.z << std::endl;
	return color;
}

// random proportion sizes between 1 and 10
glm::vec2 Rectangle::getRandomProportion()
{
	float x = (std::rand() * 1.0 / RAND_MAX) * 10 + 1;
	float y = (std::rand() * 1.0 / RAND_MAX) * 10 + 1;
	glm::vec2 proportion (x, y);
	return proportion;
}
