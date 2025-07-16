"""A Simple Calculator for Natural Language Input"""

import from mtllm.llm { Model }

glob llm = Model(model_name="gemini/gemini-2.5-flash", verbose=False);

"""Perform the calculation and format the result in natural language"""
def calculate_and_format(input_str: str) -> str by llm(
    prompt=f"Perform the calculation {input_str} and return a natural language response in the format: '{input_str} The answer is <result>.' For example, if the input is 'What is 5 plus 5?', return 'What is 5 plus 5? The answer is 10.'"
);

walker Calculator {
    has input_str: str;

    can start with `root entry;
    can process_calculation with turn entry;
}

node turn {
    has result: str;
}

with entry:__main__ {
    root spawn Calculator("What is 5 plus 5?");
    root spawn Calculator("Tell me 10 minus 2?");
    root spawn Calculator("What is 6 times 4?");
    root spawn Calculator("Tell me 15 divided by 0?");
}

