## Template Information

| Name      | Description       |
| --------- | ----------------- |
| File name | json/inline-swift3.stencil |
| Invocation example | `swiftgen json -t inline-swift3 …` |
| Language | Swift 3 |
| Author | David Jennes |

## When to use it

- When you need to generate *Swift 4* code.
- Embeds the data from the JSON file directly in your Swift code.

## Customization

You can customize some elements of this template by overriding the following parameters when invoking `swiftgen` in the command line, using `--param <paramName>=<newValue>`

| Parameter Name | Default Value | Description |
| -------------- | ------------- | ----------- |
| `enumName` | `JSONFiles` | Allows you to change the name of the generated `enum` containing all files. |
| `preservePath` | N/A | Setting this parameter will disable the basename filter applied to all file paths. Use this if you added your data folder as a "folder reference" in your Xcode project, making that folder hierarchy preserved once copied in the build app bundle. The path will be relative to the folder you provided to SwiftGen. |
| `publicAccess` | N/A | If set, the generated constants will be marked as `public`. Otherwise, they'll be declared `internal`. |

## Generated Code

**Extract:**

```swift
internal enum JSONFiles {
  internal enum Info {
    private static let _document = JSONDocument(path: "info.json")
    internal static let key1: String = _document["key1"]
    internal static let key2: String = _document["key2"]
    internal static let key3: [String: Any] = _document["key3"]
  }
  internal enum GroceryList {
    internal static let items: [String] = objectFromJSON(at: "grocery-list.json")
  }
}
```

[Full generated code](https://github.com/SwiftGen/SwiftGen/blob/master/Tests/Fixtures/Generated/JSON/inline-swift3-context-all.swift)

## Usage example

```swift
// This will be an dictionary
let foo = JSONFiles.Info.key3

// This will be an [String]
let bar = JSONFiles.GroceryList.items
```
