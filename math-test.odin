package main

import "core:fmt"
import "core:math"

Vector2 :: struct {
    x, y: f32,
}

get_length :: proc(v: Vector2) -> f32 {
    // In Odin we access the fields of struct with a dot.
    // Kinda Pitagorean theorem 
    return math.sqrt(v.x * v.x + v.y * v.y); //x^2 + y^2 square root of this
}

main :: proc() {
    position := Vector2{3.0, 4.0};

    length := get_length(position);
    fmt.println("Length of the vector: ", length); //Should print 5.0
}