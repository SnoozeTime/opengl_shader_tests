#pragma once

class Shader {

public:
  /*
    Try to compile the shader.
   */
  Shader(const char* vertexShaderSource, const char* fragmentShaderSource);

  /*
    Will activate the shaders
  */
  void use();

private:
  int m_program_id;

  bool m_loaded;
};
