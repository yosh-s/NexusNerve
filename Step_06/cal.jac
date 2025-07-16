"""A Simple Calculator"""

import from mtllm.llm { Model }

glob llm = Model(model_name="gemini/gemini-2.0-flash", verbose=False);

"""Perform the calculation and return the result"""
def calculate(num1: float, num2: float, operation: str) -> str by llm(
    prompt=f"Perform the calculation {num1} {operation} {num2} and return only the numerical result as a string"
);

walker Calculator {
    has num1: float;
    has num2: float;
    has operation: str;

    can start with `root entry;
    can process_calculation with turn entry;
}

node turn {
    has result: str;
}

with entry:__main__ {
    root spawn Calculator(5.0, 3.0, "+");
    root spawn Calculator(5.0, 3.0, "-");
    root spawn Calculator(5.0, 3.0, "*");
    root spawn Calculator(5.0, 0, "/");
    root spawn Calculator(5.0, 3.0, "/");
}

