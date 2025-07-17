impl TravelBot.start {
    if not [root --> (`?turn)] {
        next = root ++> turn("");
    } else {
        next = [root --> (`?turn)];
    }
    visit next;
}

impl TravelBot.process_recommendation {
    here.result = get_recommendation(self.destination);
    print(f"Destination: {self.destination}");
    print(here.result);
    disengage;
}