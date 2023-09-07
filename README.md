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
|<img src="https://github.com/BlueSkyAnimal/SwiftClock/assets/101543434/8043f26f-4f01-4880-b2ac-2a4c98d3e50b" alt="Clock - Light Scheme" width="256px" />|<img src="https://github.com/BlueSkyAnimal/SwiftClock/assets/101543434/1cb14946-ec93-4b66-ac42-953f5bb1ba5c" alt="Clock - Dark Scheme" width="256px" />|

## Video
|Switch Color Scheme Demonstration|
|---|
|<img src="https://github.com/BlueSkyAnimal/SwiftClock/assets/101543434/ed9e387f-9dfb-4320-a91d-0e2ca0464367" alt="Clock - Video" width="512px" />

## System Requirements
- iOS 15.0 or later
- Mac Catalist 15.0 or later
- macOS Monterey 12.0 or later
- visionOS 1.0 or later

## Framework
- 100% SwiftUI

## Feature Checklist
- [ ] Adding clock faces
- [x] Adding font support
- [ ] Adding time signal

## Author
- BlueSkyAnimal

## License
- GNU AGPLv3

## Little Bonus 🎁
If the argument `date` of Clock is nil... 🙈
|Light Scheme|Dark Scheme|
|---|---|
|<img src="https://github.com/BlueSkyAnimal/SwiftClock/assets/101543434/78596b12-2a13-417c-8a37-132b3488dbdd" alt="Bonus - Light Scheme" width="256px" />|<img src="https://github.com/BlueSkyAnimal/SwiftClock/assets/101543434/c6e72d77-7a94-4e4c-ac8b-1f302b157281" alt="Bonus - Dark Scheme" width="256px" />|
