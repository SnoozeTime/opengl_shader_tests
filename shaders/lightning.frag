#version 330 core
in vec3 Normal;
in vec3 FragPos;

out vec4 FragColor;

uniform vec3 lightColor;
uniform vec3 objectColor;

// Position of the light source.
uniform vec3 lightPos;

// position of the camera (from where we look).
uniform vec3 viewPos;

// This is phong lightning. The calculation is done in the fragment
// shader. Compute diffuse, ambiant and specular components.
// https://learnopengl.com/Lighting/Basic-Lighting
void main()
{
  // light direction is the vector fragment->light position
  vec3 lightDir = normalize(lightPos - FragPos);
  vec3 norm = normalize(Normal);

  float diff = max(dot(norm, lightDir), 0.0);
  vec3 diffuse = diff * lightColor;

  float ambiantStrength = 0.1;
  vec3 ambiant = ambiantStrength * lightColor;

  // specular
  // First, we find the reflection of light direction to the normal
  vec3 reflectDir = reflect(-lightDir, norm);
  vec3 viewDir = normalize(viewPos - FragPos);
  float spec = pow(max(dot(viewDir, reflectDir), 0.0), 256);
  float specStrength = 0.5;
  vec3 specular = specStrength * spec * lightColor;

  vec3 result = (ambiant + diffuse + specular) * objectColor;
  FragColor = vec4(result, 1.0);
}
