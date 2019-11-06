#version 330 core

layout(location = 0) in vec3 vertexPosition_modelspace;

uniform mat4 model;
uniform mat4 view;
uniform mat4 projection;

uniform vec3 color;
uniform float alpha;

out vec4 inColor;

void main()
{
	gl_Position =  projection * view * model * vec4(vertexPosition_modelspace, 1.0);

	inColor = vec4(color, 1.0);
}