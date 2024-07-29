#include "inputoutput/inputoutput.h"
#include <iostream>

void takeInput(int &a, int &b) {
    std::cout << "Enter two integers: ";
    std::cin >> a >> b;
}

void printResult(int result) {
    std::cout << "Result: " << result << std::endl;
}
