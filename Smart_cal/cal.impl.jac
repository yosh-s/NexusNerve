impl Calculator.start {
    if not [root --> (`?turn)] {
        next = root ++> turn("");
    } else {
        next = [root --> (`?turn)];
    }
    visit next;
}

impl Calculator.process_calculation {
    here.result = calculate_and_format(self.input_str);
        print(f"Input: {self.input_str}");
        print(here.result);
        disengage;
}