#version 330 core
layout (location = 0) in vec3 aPos;
layout (location = 1) in vec3 aNormal;

uniform mat4 model;
uniform mat4 view;
uniform mat4 projection;

out vec3 Normal;
// position of the fragment.
out vec3 FragPos;

void main()
{
  gl_Position = projection * view * model * vec4(aPos, 1.0);
  // model * aPos will give the coordinates in world referential
  FragPos = vec3(model * vec4(aPos, 1));

  // Cannot just multiply by the model matrix. aNormal is a direction and
  // not a point so it does not have a w component so the translation part
  // of the matrix would not affect. Also, the model matrix multiplication
  // will distort the normal and make it not normal anymore (scale...)
  // So we multiply by the normal matrix instead which is defined as
  // the transpose of the inverse of the upper-left corner of the model matrix
  Normal = mat3(transpose(inverse(model))) * aNormal;

}
