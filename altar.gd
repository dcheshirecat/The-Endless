extends Node3D

func _input(event):
    if event is InputEventScreenTouch and event.pressed:
        var from = $Camera3D.project_ray_origin(event.position)
        var to = from + $Camera3D.project_ray_normal(event.position) * 100

        var space = get_world_3d().direct_space_state
        var result = space.intersect_ray(from, to)

        if result:
            handle_tap(result.collider.name)

func handle_tap(name):
    match name:
        "TarotDeck":
            var card = Tarot.draw_card()
            Game.save_reading([card], "Auto reading")
        "Candle":
            Game.apply_curse(-1)
        "Book":
            print("Open Book of Shadows")