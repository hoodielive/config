#include <iostream> 
#include <string>

int main()
{
  std::string namer;
  char name[256];
  std::cout << "How are you?";
  std::cin.getline(name, 256);
  std::cout << "That's great that you are " << name << std::endl;
}
