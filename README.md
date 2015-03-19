# JsonObject
Magical Swift JSON Modeling Framework

Working with json in Swift can be a pain. But it doesn't have to be.

## Usage

Let's say you have some json like this:

```javascript
{"id":"1025", "name":"Tom", "state":"CA"}
```

Just create a Swift model representation like so:

```swift
class User: JsonObject {
    var id: NSNumber?
    var name: String?
    var state: String?
}
```

## Installation

JsonObject is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

    pod "JsonObject"

## Author

Brad Hilton, brad.hilton.nw@gmail.com

## License

JsonObject is available under the MIT license. See the LICENSE file for more info.
