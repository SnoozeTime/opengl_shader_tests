#pragma once
#include <vector>

struct Metadata {

};

class ImageData {
private:
  // Data loaded with stdi header
  unsigned char* m_data;

  float m_width, m_height;
  // Metadata loaded at the same time with the image.
  // Just a vector of properties
  Metadata m_metadata;
public:
  // Construct from the data loaded with stbi_load
  ImageData(unsigned char* data, float width, float height);

  // Call to stbi free to release the data
  ~ImageData();

  // Handle to the data. Please do not delete this guy :)
  unsigned char* data() const;
  const float width() const;
  const float height() const;

  const Metadata& metadata() const;
};

/*
  Will help loading the resources from the file system.
 */
class FileSystem {

private:

  // Where all the resources are located
  const char* m_base_path;

public:

  FileSystem(const char* base_path);
  /*
    Load an image and its metadata from the file system.
  */
  ImageData loadImage(const char* path) const;
};
