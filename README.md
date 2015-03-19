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

## Installation

JsonObject is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

    pod 'JsonObject'


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
```

All NSObject subclasses (such as NSNumber, NSString, NSArray, etc.) can be represented as default, optional or required properties.

## Key Mapping

Often JSON Data is represented in underscore case like so:

```javascript
{
    "member_id":"30495", 
    "is_public":true, 
    "account_balance":523.22
}
```

But we'd like our model to use camel case like this:

```swift
class User: JsonObject {
    var memberId: NSNumber!
    var isPublic: Bool = false
    var accountBalance: Float = 0.0
}
```

To have JsonObject automatically map underscore properties to camel case, we just implement this protocol:

```swift
class User: JsonObject, MapsUnderscoreCaseToCamelCase {
    var memberId: NSNumber!
    var isPublic: Bool = false
    var accountBalance: Float = 0.0
}
```

That was easy.

## JsonMapper

To support mapping of JSON values to your object properties and back, there is a protocol, JsonMapper:

```swift
protocol JsonMapper {
    func propertyValueFromJsonValue(value: JsonValue) -> AnyObject?
    func jsonValueFromPropertyValue(value: AnyObject) -> JsonValue?
}
```

JSON values are represented by the enum, JsonValue:

```swift
enum JsonValue {
    case String(NSString)
    case Number(NSNumber)
    case Array(NSArray)
    case Dictionary(NSDictionary)
    case Null(NSNull)
}
```

JsonObject comes with default mappers for the most commonly used types:

```swift
Int
Float
Double
Bool
String
Array
Dictionary
NSNumber
NSString
NSArray
NSDictionary
JsonObject
```

Your objects can include any of these properties, including other JsonObjects like so:

```swift
class User: JsonObject {
    var id: Int = 0
    var name: String!
    var isPublic: Bool = false
    var isMember: Bool = false
    var accountBalance: Float = 0.00
    var ranking: NSNumber!
    var spouse: User?
    var friends: [User]?
    var metadata: [String:[NSNumber]]?
}
```

If you'd like to implement your own mapper, simply extend the class you'd like a mapper for:

```swift
extesion NSDate: JsonMapper {
    
    func propertyValueFromJsonValue(value: JsonValue) -> AnyObject? {
        // Convert a JsonValue into an NSDate...
    }
    
    func jsonValueFromPropertyValue(value: AnyObject) -> JsonValue? {
        // Convert an NSDate into a JsonValue...
    }
    
}
```

And then register an instance of the mapper with JsonObject:

```swift
var dateInstance = NSDate()
JsonObject.registerMapper(dateInstance)
```

## Author

Brad Hilton, brad.hilton.nw@gmail.com

## License

JsonObject is available under the MIT license. See the LICENSE file for more info.
