impl Calculator.start {
    if not [root --> (`?turn)] {
        next = root ++> turn("");
    } else {
        next = [root --> (`?turn)];
    }
    visit next;
}

impl Calculator.process_calculation {
    if [-->] {
        visit [-->];
    } else {
        if self.operation not in ["+", "-", "*", "/"] {
            print("Error: Invalid operation. Use +, -, *, or /.");
            disengage;
            return;
        }
        if self.operation == "/" and self.num2 == 0 {
            print("Error: Division by zero is not allowed.");
            disengage;
            return;
        }
        here.result = calculate(self.num1, self.num2, self.operation);
        print(f"Result: {self.num1} {self.operation} {self.num2} = {here.result}");
        disengage;
    }
}