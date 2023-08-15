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

## Author
- BlueSkyAnimal

## License
- GNU AGPLv3
