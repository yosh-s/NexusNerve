"""A Simple Calculator"""

"""Provide a fun description of the calculation result"""

walker Calculator {
    has num1: float;
    has num2: float;
    has operation: str;

    can start with `root entry;
    can process_calculation with turn entry;
}

node turn {
    has result: float;
}

with entry:__main__ {
    root spawn Calculator(5.0, 3.0, "+");
    root spawn Calculator(5.0, 3.0, "-");
    root spawn Calculator(5.0, 3.0, "*");
    root spawn Calculator(5.0, 0, "/");
    root spawn Calculator(5.0, 3.0, "/");
}

