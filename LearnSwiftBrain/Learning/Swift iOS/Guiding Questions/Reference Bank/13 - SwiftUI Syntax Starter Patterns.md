# SwiftUI Syntax Starter Patterns

Use this note when stuck on “sintaks pertama yang harus diketik”.

## Starter patterns

Kalau mau nampilin teks/data:

```swift
Text(...)
```

Kalau mau bikin sesuatu yang bisa ditap:

```swift
Button {
    // action
} label: {
    Text("Button title")
}
```

Kalau value bisa berubah dan UI harus ikut berubah:

```swift
@State var valueName: Type = initialValue
```

Kalau mau nampilin angka di `Text`:

```swift
Text("\(elapsedSeconds)s")
```

## Mental model

- `Text(...)` = render teks/data ke UI.
- `Button { } label: { }` = action yang jalan saat ditap + tampilan tombol.
- `@State var` = data milik view yang kalau berubah bikin SwiftUI render ulang.

## Stored vs computed property pattern

```text
= nilai awal          → stored property, menyimpan value
{ return ... }        → computed read-only, menghitung/mengembalikan value
{ get ... set ... }   → computed property yang bisa dibaca dan di-assign
```

Examples:

```swift
@State var elapsedSeconds: Int = 0
```

Ini stored state property. Ada value awal `0`, jadi ada data yang disimpan dan bisa berubah.

```swift
var title: String {
    return "Ready"
}
```

Ini computed read-only property. Bisa dibaca, tapi tidak bisa di-assign karena tidak punya `set`.

```swift
var title: String {
    get {
        storedTitle
    }
    set {
        storedTitle = newValue
    }
}
```

Ini computed property dengan getter dan setter. Bisa dibaca dan bisa menerima value baru.
