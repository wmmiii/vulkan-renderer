
#include <fstream>
#include <iostream>
#include <stdexcept>
#include <vector>

int main(int argv, char* argc[]) {
  if (argv != 4) {
    std::cout << "Improper number of arguments! Found " << argv
              << " expected 3." << std::endl;
    std::cout << "Usage: " << argc[0] << " input output variable_name"
              << std::endl;
    return 1;
  }

  std::cout << argc[0] << std::endl;

  char* input = argc[1];
  char* output = argc[2];
  char* variable = argc[3];

  std::cout << "Input: " << input << std::endl;
  std::cout << "Output: " << output << std::endl;
  std::cout << "Variable: " << variable << std::endl;

  std::ifstream input_file(input, std::ios::ate | std::ios::binary);

  if (!input_file.is_open()) {
    throw std::runtime_error("Failed to open input file!");
    return 1;
  }

  std::ofstream output_file(output);

  if (!output_file.is_open()) {
    throw std::runtime_error("Failed to open output file!");
    return 1;
  }

  output_file << "#include <vector>" << std::endl;;
  output_file << std::endl;
  output_file << "std::vector<char> " << variable << "{";

  size_t fileSize = (size_t)input_file.tellg();
  std::vector<char> buffer(fileSize);

  input_file.seekg(0);
  input_file.read(buffer.data(), fileSize);

  input_file.close();

  bool first = true;
  for (char c : buffer) {
    if (!first) {
      output_file << ',';
    }
    first = false;
    output_file << (int) c;
  }

  output_file << "};" << std::endl;

  output_file.close();

  return 0;
}