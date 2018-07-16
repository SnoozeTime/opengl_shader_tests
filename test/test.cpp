#define BOOST_TEST_MODULE FileSystemTest
#include <boost/test/unit_test.hpp>
#include "managers/FileSystem.hpp"
#include <string>
#include <iostream>

BOOST_AUTO_TEST_CASE( my_test )
{
  FileSystem fs("../test/resources");
  std::string from_file = fs.read_string("random.txt");
}

BOOST_AUTO_TEST_CASE( create_metadata ) {
  std::string props_str = "key1:value1\nkey2:value2";
  Metadata data(props_str);
  std::cout << data.get_property("key1") << std::endl;
}
