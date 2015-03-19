# JsonObject
Magical Swift JSON Modeling Framework

Working with JSON in Swift can be a pain. But it doesn't have to be.

## Basic Usage

Let's say you have some JSON like this:

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

Now initializing our model with a JSON dictionary representation is a piece of cake:

```swift
let jsonDictionary (A NSDictionary representation of your JSON Data)
if let user = User(dictionary: jsonDictionary) {
    ...do something with your new user
}
```

Converting your user back into a JSON dictionary is also super easy:

```swift
let jsonDictionary = user.dictionary
```

That was easy.

## Installation

JsonObject is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

    pod "JsonObject"

## Author

Brad Hilton, brad.hilton.nw@gmail.com

## License

JsonObject is available under the MIT license. See the LICENSE file for more info.
