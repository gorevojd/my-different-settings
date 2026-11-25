package palette

MAX_SWATCHES :: 16

Palette :: struct {
    names: [MAX_SWATCHES]string,
    count: int,
}

add_swatch :: proc(p: ^Palette, name: string) -> bool {
    // IMPORTANT: Check capacity before writing to the array.
    if p.count >= MAX_SWATCHES { return false }

    // NOTE: Empty names are displayed as "untitled".
    p.names[p.count] = name != "" ? name : "untitled"
    p.count += 1
    // TODO: Check for duplicate names.
    return true
}
