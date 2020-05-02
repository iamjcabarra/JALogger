# JALogger
JALogger is a simple tool used for logging purposes. It primarily utilizes OSLog, a log object that can be passed to logging functions in order to send messages to the logging system, as a replacement of print and NSLog. OSLog is the recommended way of logging by Apple.

## Installation
The recommended way is to use **CocoaPods**. To install JALogger, include the following in your Podfile

```ruby
pod 'JALogger', '~> 1.0.0'
```

## Usage

After adding the framework to your project, you need to import the module
```swift
import JALogger

class SampleViewController {

   override func viewDidLoad() {
      super.viewDidLoad()

      JALogger.ui.log("Setting up UI...")
   }
   
   func sum(_ a: Int, _ b: Int) {
      JALogger.business.log("Sums up \(a) and \(b)")
      return a + b
   }
   
   func requestUserList() {
      JALogger.network.log("Fetching users...")
      APIManager.getUsers()
   }
}
```

## License

MIT License

Copyright (c) 2020 Julius Abarra

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.

