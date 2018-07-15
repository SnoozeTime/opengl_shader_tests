#include "FileSystem.hpp"
#include <stb_image.h>
#include <cstring>
#include <iostream>
#include <cstdio>

// --------------------------------------------
// ImageData is just a wrapper around the
// image loading C library.
// --------------------------------------------

ImageData::ImageData(unsigned char* data, float width, float height):
  m_data(data),
  m_width(width),
  m_height(height),
  m_metadata() {}

ImageData::~ImageData() {
  stbi_image_free(m_data);
}

unsigned char* ImageData::data() const { return m_data; }
const Metadata& ImageData::metadata() const { return m_metadata; }
const float ImageData::width() const { return m_width; }
const float ImageData::height() const { return m_height; }

// ---------------------------------------------------
// File system will load using external libraries/API
// Right now, pretty specific but later we can use
// templates/POO to tell what loader to use.
// ---------------------------------------------------

FileSystem::FileSystem(const char* base_path): m_base_path(base_path) {
}

ImageData FileSystem::loadImage(const char* path) const {
  // TODO - Get a real Path utility.
  char* complete_path = (char*) malloc(strlen(path) + strlen(m_base_path) + 20);
  sprintf(complete_path, "%s/%s", m_base_path, path);

  int width, height, nrChannels;
  // Flip loaded texture on the y-axis
  stbi_set_flip_vertically_on_load(true);
  unsigned char* data = stbi_load(complete_path, &width, &height, &nrChannels, 0);
  free(complete_path);
  return ImageData(data, width, height);
}
