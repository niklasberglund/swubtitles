# swubtitles
Subtitles parsing and downloading with Swift 3

## Installation
### Installation with CocoaPods
Will be available once the framework is released.


## Usage example
Parse a SRT subtitles file and iterate over the results.

```swift
let exampleSubtitlesUrl = Bundle.main.url(forResource: "big_buck_bunny_1080p", withExtension: "srt")
let subtitles = Subtitles(fileUrl: exampleSubtitlesUrl!)

for title in subtitles.titles! {
    print("Do something with title starting at \(title.start) ending at \(title.end):")
    print(title.texts!.description + "\n")
}
```

Remember `import Swubtitles`