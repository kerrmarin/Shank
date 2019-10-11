# Biodag

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
        Module { WidgetModule() as WidgetModuleType }
    }
    
    override init() {
        super.init()
        dependencies.build()
    }
}
```

If you forget to `build` the dependency container, it will result in a run-time exception. 
