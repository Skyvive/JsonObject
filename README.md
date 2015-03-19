# JsonObject
Magical Swift JSON Modeling Framework

Working with JSON in Swift can be a pain. But it doesn't have to be.

## Basic Usage

Let's say you have some JSON like this:

```javascript
{"id":"1025", "name":"Tom", "state":"CA"}
```

Just create a subclass of JsonObject like so:

```swift
class User: JsonObject {
    var id: NSNumber?
    var name: String?
    var state: String?
}
```

Now initializing our model with a JSON dictionary representation is a piece of cake:

```swift
let jsonDictionary = (A NSDictionary representation of your JSON Data)
if let user = User(dictionary: jsonDictionary) {
    (Do something with your new user)
}
```

Converting your user back into a JSON dictionary is also super easy:

```swift
let jsonDictionary = user.dictionary
```

That was easy.

## Model Specification

There are three different ways to specify your properties: default, optional or required.

1) Default: If you set your property with a default value and your JSON data doesn't have that property, then your default value will remain as you specify.

2) Optional: If you declare an optional property then it may or may not have a value after you initialize your model.

3) Required: If you declare an implicitly unwrapped property, then JsonObject will make sure that your property has a value when initializing, or the initialization will fail. This keeps your models safe and makes it easy to specify which fields are required.

```swift
var defaultString: String = "Hello World" // This string will always have a value with the default being 'Hello World'
var optionalString: String? // This may or may not have a value after initalization
var requiredString: String! // If this property can't be set, then initialization will fail
```

Not all types can be set as optional or required types because of the way key-value coding works. See list below for supported Swift types:

```swift
Int // default only
Float // default only
Double // default only
Bool // default only
String // default, optional or required
Array // default, optional or required
Dictionary // default, optional or required
Set // default, optional or required
```

All NSObject subclasses (such as NSNumber, NSString, NSArray, etc.) can be represented as default, optional or required properties.

## JsonMapper

To support mapping of JSON values to your object properties and back, there is a protocol, JsonMapper:

```swift
public protocol JsonMapper {
    
    // Required method that returns an instance of this object given a JsonValue input
    func propertyValueFromJsonValue(value: JsonValue) -> AnyObject?
    
    // Required method that returns a JsonValue given an instance of this object
    func jsonValueFromPropertyValue(value: AnyObject) -> JsonValue?
    
}
```

JSON values are represented by the enum, JsonValue:

```swift
// An enum that represents a JSON dictionary value
// Call .value() to get value

public enum JsonValue {
    
    case String(NSString)
    case Number(NSNumber)
    case Array(NSArray)
    case Dictionary(NSDictionary)
    case Null(NSNull)
    
    init?(value: AnyObject?) {
        switch value {
        case let value as NSString:
            self = .String(value)
        case let value as NSNumber:
            self = .Number(value)
        case let value as NSArray:
            self = .Array(value)
        case let value as NSDictionary:
            self = .Dictionary(value)
        case let value as NSNull:
            self = .Null(value)
        default:
            return nil
        }
    }
    
    func value() -> AnyObject {
        switch self {
        case .String(let value): return value
        case .Number(let value): return value
        case .Array(let value): return value
        case .Dictionary(let value): return value
        case .Null(let value): return value
        }
    }
    
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
