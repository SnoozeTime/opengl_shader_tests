#include "FileSystem.hpp"
#include <stb_image.h>
#include <cstring>
#include <iostream>
#include <cstdio>
#include <sstream>
#include <fstream>

Metadata::Metadata(const std::string& source){

  m_props.clear();
  std::istringstream ss(source);
  std::vector<std::string> lines;
  while (!ss.eof()) {
    std::string token;
    std::getline(ss, token, '\n');
    lines.push_back(token);
  }

  for (auto& line: lines) {
    std::istringstream propss(line);
    std::string key;
    std::string value;
    int nb = 0;
    while (!propss.eof()) {
      if (nb == 0) {
      std::getline(propss, key, ':');
      } else {
	std::getline(propss, value, ':');
      }
      nb++;
    }

    if (nb == 2) {
      m_props[key] = value;
    } else {
      // todo do something!
    }
  }
}

std::string Metadata::get_property(const std::string& property_name) const {
  return std::string(m_props.at(property_name)) ;
}
// --------------------------------------------
// ImageData is just a wrapper around the
// image loading C library.
// --------------------------------------------

ImageData::ImageData(unsigned char* data, int width, int height, int nr_components):
  m_data(data),
  m_width(width),
  m_height(height),
  m_nr_components(nr_components){}

ImageData::~ImageData() {
  stbi_image_free(m_data);
}

unsigned char* ImageData::data() const { return m_data; }
int ImageData::width() const { return m_width; }
int ImageData::height() const { return m_height; }
int ImageData::nr_components() const { return m_nr_components; }

// ---------------------------------------------------
// File system will load using external libraries/API
// Right now, pretty specific but later we can use
// templates/POO to tell what loader to use.
// ---------------------------------------------------

FileSystem::FileSystem(const char* base_path): m_base_path(base_path) {
}

ImageData FileSystem::load_image(const char* path) const {
  // TODO - Get a real Path utility.
  char* complete_path = static_cast<char*>(malloc(strlen(path) + strlen(m_base_path) + 20));
  sprintf(complete_path, "%s/%s", m_base_path, path);

  int width, height, nrChannels;
  // Flip loaded texture on the y-axis
  stbi_set_flip_vertically_on_load(true);
  unsigned char* data = stbi_load(complete_path, &width, &height, &nrChannels, 0);
  free(complete_path);
  return ImageData(data, width, height, nrChannels);
}

Metadata FileSystem::load_metadata(const char *path) const {
  std::string metadata_str = read_string(path);
  return Metadata(metadata_str);
}

std::string FileSystem::read_string(const char* path) const {
  std::string str;

  std::ifstream str_source;
  str_source.exceptions(std::ifstream::failbit|std::ifstream::badbit);

  char* complete_path = static_cast<char*>(malloc(strlen(path) + strlen(m_base_path) + 20));
  sprintf(complete_path, "%s/%s", m_base_path, path);

  try {
    str_source.open(complete_path);
    std::stringstream str_stream;
    str_stream << str_source.rdbuf();
    str_source.close();

    str = str_stream.str();
  } catch (std::ifstream::failure e) {
    std::cerr << "ERROR CANNOT LOAD STRING FROM " << complete_path << std::endl;
  }

  free(complete_path);

  return str;
}
