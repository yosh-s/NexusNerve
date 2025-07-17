"""Unit Conversion bot"""

import from mtllm.llm { Model }

glob llm = Model(model_name="gemini/gemini-2.5-flash", verbose=False);

def convert_units(input:str) -> float by llm(
    prompt = f"You are a Unit Converter Bot.Convert {input}, When a user types a request like 'Convert 100 cm to m' or '50 kg to g', respond with the correct converted value using proper formulas. Support units like cm, m, km, mm, inch, ft, kg, g, lb, °C, and °F. If units are unsupported, reply with 'Sorry, I can't convert those units yet.' Example: '100 cm = 1 meter ✅', '0°C = 32°F 🌡️'."
);

walker UnitConverter {
    has input: str;

    can start with `root entry;
    can process_conversion with turn entry;
}

node turn {
    has result: str;
}

with entry:__main__ {
    root spawn UnitConverter("Convert 100 cm to inches");
    root spawn UnitConverter("Convert 50 kg to g");
    root spawn UnitConverter("Convert 32°F to °C");
    root spawn UnitConverter("Convert 1 km to miles");

}

