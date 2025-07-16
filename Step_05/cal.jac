"""A Simple Calculator"""

import from mtllm.llm { Model }

glob llm = Model(model_name="gemini/gemini-1.5-flash", verbose=False);

"""Provide a fun description of the calculation result"""
def give_description(num1: float, num2: float, operation: str, result: float) -> str by llm();

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

impl Calculator.start {
    if not [root --> (`?turn)] {
        next = root ++> turn(0.0);
    } else {
        next = [root --> (`?turn)];
    }
    visit next;
}

impl Calculator.process_calculation {
    if [-->] {
        visit [-->];
    } else {
        if self.operation == "+" {
            here.result = self.num1 + self.num2;
        } elif self.operation == "-" {
            here.result = self.num1 - self.num2;
        } elif self.operation == "*" {
            here.result = self.num1 * self.num2;
        } elif self.operation == "/" {
            if self.num2 != 0 {
                here.result = self.num1 / self.num2;
            } else {
                print("Error: Division by zero is not allowed.");
                disengage;
                return;
            }
        } else {
            print("Error: Invalid operation. Use +, -, *, or /.");
            disengage;
            return;
        }
        description = give_description(self.num1, self.num2, self.operation, here.result);
        print(f"Result of {self.num1} {self.operation} {self.num2} = {here.result}");
        print(description);
        disengage;
    }
}