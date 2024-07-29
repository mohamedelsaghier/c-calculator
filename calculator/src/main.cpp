#include "calculator/calculator.h"
#include <iostream>

int main() {
    int a, b;
    takeInput(a, b);

    int sum = add(a, b);
    int diff = subtract(a, b);
    int product = multiply(a, b);
    int quotient = 0;
    try {
        quotient = divide(a, b);
    } catch (const std::invalid_argument &e) {
        std::cerr << e.what() << std::endl;
    }

    std::cout << "Operations results:" << std::endl;
    printResult(sum);
    printResult(diff);
    printResult(product);
    printResult(quotient);

    return 0;
}
