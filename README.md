# Biodag [![Build Status](https://travis-ci.org/kerrmarin/biodag.svg?branch=develop)](https://travis-ci.org/kerrmarin/biodag)

Biodag: [pit̪akˈ] - [dirk](https://en.wikipedia.org/wiki/Dirk) in Scottish Gaelic, a long thrusting dagger.

A Swift micro-library that provides lightweight dependency injection, heavily influenced by [Shank](https://github.com/ZamzamInc/Shank)

Inject dependencies via property wrappers:
```swift
final class ViewController: UIViewController {
    
    @Inject private var widgetModule: WidgetModuleType
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        widgetModule.test()
    }
}
```

Register modules early in your app:
```swift
class AppDelegate: UIResponder, UIApplicationDelegate {

    private let dependencies = Dependencies {
        // A prototype dependency (i.e. one per @Inject)
        Module { WidgetModule() as WidgetModuleType }
        // A dependency that's scoped to be a singleton
        Module(scope: .singleton) { SingletonModule() as SingletonModuleType }
    }
    
    override init() {
        super.init()
        dependencies.build()
    }
}
```

If you forget to `build` the dependency container, it will result in a run-time exception. 

# Contributing

To run the tests, run `swift test`.

To open in Xcode, open the package workspace file inside the `.swiftpm/xcode` folder.

If you find a bug or want to suggest an improvement, open an issue and, optionally (but encouraged!), make a PR :)