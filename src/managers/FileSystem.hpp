#pragma once
#include <vector>
#include <string>
#include <map>

struct Metadata {
private:
  std::map<std::string, std::string> m_props;
public:

  /*
    Will construct the property map from a string.
   */
  Metadata(const std::string& source);

  std::string get_property(const std::string& property_name) const;
};

class ImageData {
private:
  // Data loaded with stdi header
  unsigned char* m_data;

  int m_width, m_height, m_nr_components;

public:
  // Construct from the data loaded with stbi_load
  ImageData(unsigned char* data, int width, int height, int nr_components);

  // Call to stbi free to release the data
  ~ImageData();

  // Handle to the data. Please do not delete this guy :)
  unsigned char* data() const;
  int width() const;
  int height() const;
  int nr_components() const;
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
  ImageData load_image(const char* path) const;

  /*
    Load metadata from a path
   */
  Metadata load_metadata(const char* path) const;

  /**
     Load a string from file. This is reading everything so do not
     use if file is large
  */
  std::string read_string(const char* path) const;
};
