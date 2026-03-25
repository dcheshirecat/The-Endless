extends Control

var lines = []
var index = 0

func start_dialogue(new_lines):
    lines = new_lines
    index = 0
    show()
    update_text()

func update_text():
    $Label.text = lines[index]

func _input(event):
    if event is InputEventScreenTouch and event.pressed:
        index += 1
        if index < lines.size():
            update_text()
        else:
            hide()