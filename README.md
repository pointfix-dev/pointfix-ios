# PointfixKit for iOS

**Point at a UI problem. Describe the fix. Let your local coding agent work.**

PointfixKit adds capture to your SwiftUI app in the iOS Simulator: long-press any control, describe what should change, and the report — with a screenshot, element context and optional source location — goes to the Pointfix bridge running on your Mac, which hands it to your coding agent.

## Install

In Xcode, choose **File → Add Package Dependencies…**, enter

```
https://github.com/pointfix-dev/pointfix-ios
```

and add `PointfixKit` from version `0.2.0`. Requires iOS 26 and Xcode 27 or newer.

## Usage

```swift
import PointfixKit
import SwiftUI

@main
struct MyApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .pointfixHost()
        }
    }
}

struct ContentView: View {
    var body: some View {
        VStack {
            Text("Welcome")
                .pointfixable("Welcome title")
            Button("Continue") { }
                .pointfixable("Continue button")
        }
        .pointfixScreen("Onboarding")
    }
}
```

- `.pointfixHost()` — attach once at the root of your app. Connects to the bridge on this Mac (`127.0.0.1:4747`); use `.pointfixHost(url:)` for a bridge on another Mac.
- `.pointfixScreen(_:)` — names the current screen.
- `.pointfixable(_:)` — marks an element so reports point to its source.

## Simulator only

Capture runs in the iOS Simulator. The device build of PointfixKit is a no-op: the modifiers pass your views through unchanged, so builds for physical devices and the App Store contain no capture code.

## Documentation

https://pointfix.dev/docs/ios

## License

See [LICENSE.md](LICENSE.md).
