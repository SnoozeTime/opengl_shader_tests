#version 330 core
in vec3 Normal;
in vec3 FragPos;
in vec2 TextCoords;

out vec4 FragColor;

struct Material {
  sampler2D diffuse;
  sampler2D specular;
  float shininess;
};

struct Light {
  vec3 position;

  vec3 ambient;
  vec3 diffuse;
  vec3 specular;
};

uniform vec3 lightColor;
uniform vec3 objectColor;

// position of the camera (from where we look).
uniform vec3 viewPos;

uniform Material material;
uniform Light light;

// This is phong lightning. The calculation is done in the fragment
// shader. Compute diffuse, ambiant and specular components.
// https://learnopengl.com/Lighting/Basic-Lighting
void main()
{
  // ambient
  vec3 ambient = light.ambient * vec3(texture(material.diffuse, TextCoords));

  // diffuse
  vec3 norm = normalize(Normal);
  vec3 lightDir = normalize(light.position - FragPos);
  float diff = max(dot(norm, lightDir), 0.0);
  vec3 diffuse = light.diffuse * diff * vec3(texture(material.diffuse, TextCoords));

  // specular
  vec3 viewDir = normalize(viewPos - FragPos);
  vec3 reflectDir = reflect(-lightDir, norm);
  float spec = pow(max(dot(viewDir, reflectDir), 0.0), material.shininess);
  vec3 specular = light.specular * spec * vec3(texture(material.specular, TextCoords));

  vec3 result = ambient + diffuse + specular;
  FragColor = vec4(result, 1.0);
}
