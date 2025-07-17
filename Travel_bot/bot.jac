"""Trvel Recommendation Bot"""

import from mtllm.llm { Model }

glob llm = Model(model_name="gemini/gemini-2.0-flash", verbose=False);

def get_recommendation(destination: str) -> str by llm(
    # prompt=f"Provide a travel recommendation for {destination} in a friendly and informative tone."
    prompt = f"""You are a friendly travel assistant bot.When given a city or country like '{destination}', respond with **one short travel recommendation** — either:1. A place to visit, OR 2. A fun activity to try, OR 3. A famous local food to eat.Be cheerful and use an emoji to add flavor! If you don’t recognize the place, respond with: “Sorry, I don’t have recommendations for that place yet.” Keep the reply short and friendly."""
);


walker TravelBot {
    has destination: str;

    can start with `root entry;
    can process_recommendation with turn entry;
}

node turn {
    has result: str;
}

with entry:__main__ {
    root spawn TravelBot("Paris");
    root spawn TravelBot("Tokyo");
    root spawn TravelBot("New York");
    root spawn TravelBot("Sydney");
    root spawn TravelBot("Sri Lanka");
}

