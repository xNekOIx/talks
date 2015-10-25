# iOS Autolayouts
### Konstantin Bychkov
#### @xnekoix

***
# Main Layout approaches
* Springs & Struts
* Autolayouts
* StackView
* ReactiveCocoaLayout
* ComponentKit

***
# Springs & Struts
* frame absolute positioning
* autoresizing masks

***
# Springs & Struts Pros
* easy to understand how it works and easy to debug
* works really fast

***
# Springs & Struts Cons
* messy to work with complex dynamic layouts
* imperative
* different devices screen sizes adds more complexity to implementation

***
# ReactiveCocoaLayout
Allows to describe layouts in a reactive way
[GitHub](https://github.com/ReactiveCocoa/ReactiveCocoaLayout)

***
# ReactiveCocoaLayout Pros
* works fast
* animations through [ReactiveAnimation](https://github.com/ReactiveCocoa/ReactiveAnimation)
* open-source
* declarative

***
# ReactiveCocoaLayout Cons
* alpha
* no Interface Builder support
* objective-c

***
# ReactiveCocoaLayout Debatable
* unidirectional layout update (top-down)
(easier to debug / but harder to propagate changes upstream)
* ReactiveCocoa

***
# ComponentKit
From [Facebook](https://facebook.com) known for their [react.js](https://facebook.github.io/react/)
which was basically an inspiration for [ComponentKit](https://github.com/facebook/componentkit)

***
# ComponentKit Pros
* declarative
* flex-box model
* open-source

***
# ComponentKit Cons
* not supported anymore (but developers promised some swift implementation)
* no Interface Builder support

# ComponentKit Debatable
* objective-c++

***
# Apple Autolayouts

***
# Apple Autolayouts Pros
* declarative
* Interface Builder
* swift

***
# Apple Autolayouts Cons
* slower then Springs & Struts (but 60 fps still no problem)
* debug

***
# StackView
(linear layout в android)
