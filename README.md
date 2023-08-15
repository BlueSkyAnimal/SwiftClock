# SwiftClock

SwiftClock provides a modern analog clock powered by SwiftUI!

## Usage

``` swift
struct ContentView: View {
    @State private var date: Date?
    
    var body: some View {
        TimelineView(.animation) { context in
            Clock(date: $date)
                .onChange(of: context.date) { oldValue, newValue in
                    date = newValue
                }
        }
        .padding()
        .background(.quinary)
    }
}
```

## Screenshot
|Light Scheme|Dark Scheme|
|---|---|
|<img src="https://github.com/BlueSkyAnimal/SwiftClock/assets/101543434/bb97823b-d995-46aa-877b-4bb8a187bf77" alt="Clock - Light Scheme" width="256px" />|<img src="https://github.com/BlueSkyAnimal/SwiftClock/assets/101543434/8445f2f7-695a-4c6d-a62d-4a41519d4b76" alt="Clock - Dark Scheme" width="256px" />|

## Video
|Switch Color Scheme Demonstration|
|---|
|<img src="https://github.com/BlueSkyAnimal/SwiftClock/assets/101543434/7e65e187-23a9-4ab4-b256-d156ca37abe1.mp4" alt="Clock - Video" width="512px" />

## System Requirements
- iOS 15.0 or later
- Mac Catalist 15.0 or later
- macOS Monterey 12.0 or later
- visionOS 1.0 or later

## Framework
- 100% SwiftUI

## Feature Checklist
- [ ] Adding clock faces
- [ ] Adding font support
- [ ] Adding time signal

## Author
- BlueSkyAnimal

## License
- GNU AGPLv3

## Little Bonus 🎁
If the argument `date` of Clock is nil... 🙈
|Light Scheme|Dark Scheme|
|---|---|
|<img src="https://github.com/BlueSkyAnimal/SwiftClock/assets/101543434/76d518d9-7728-4790-88b9-dd82310c0599" alt="Bonus - Light Scheme" width="256px" />|<img src="https://github.com/BlueSkyAnimal/SwiftClock/assets/101543434/da0b0eea-401e-4686-a2a5-ed5733cddc65" alt="Bonus - Dark Scheme" width="256px" />|
