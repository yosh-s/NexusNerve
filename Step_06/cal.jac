"""A Simple Calculator"""

# import from mtllm.llm { Model }

# glob llm = Model(model_name="gemini/gemini-2.0-flash", verbose=False);

"""Provide a fun description of the calculation result"""
# def give_description(num1: float, num2: float, operation: str, result: float) -> str by llm();

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
    root spawn Calculator(5.0, 3.0, "/");
}

