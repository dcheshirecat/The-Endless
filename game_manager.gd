extends Node

var curse_level = 5

var relationships = {
    "herbalist": 0,
    "fae": 0,
    "seamstress": 0,
    "demon": 0
}

var readings = []

func apply_curse(amount):
    curse_level += amount
    print("Curse:", curse_level)

func save_reading(cards, notes):
    readings.append({
        "cards": cards,
        "notes": notes,
        "time": Time.get_datetime_string_from_system()
    })