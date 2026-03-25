extends Node

var cards = [
    "The Fool",
    "The Lovers",
    "Death",
    "The Moon"
]

func draw_card():
    randomize()
    var card = cards[randi() % cards.size()]
    print("Drawn:", card)
    return card