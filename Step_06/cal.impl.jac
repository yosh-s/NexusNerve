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
        # description = give_description(self.num1, self.num2, self.operation, here.result);
        print(f"Result of {self.num1} {self.operation} {self.num2} = {here.result}");
        # print(description);
        disengage;
    }
}