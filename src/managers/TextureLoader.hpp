#pragma once

/*
  Load texture from file and returns a texture ID from opengl.
 */
class TextureLoader {

public:

  /*
    Will load the texture and return the opengl id. Free the image
    resource as the data will reside on video ram now.
   */
  unsigned int load(const char* texture_name);
}
