# iOS Autolayouts
### Konstantin Bychkov
#### @xnekoix

***
![Presentation QR](/image/qrcode.png)

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

***
# ComponentKit Debatable
* objective-c++

***
# Apple Autolayouts
Based on [Cassowary](https://en.wikipedia.org/wiki/Cassowary_(software)) constraint solving toolkit developed by Greg Badros and Alan Borning.

***
# y = a * x + b

***
```attribute1 = multiplier * attribute2 + constantant```

***
```attribute1 = multiplier * attribute2 + constantant
attribute1 >= multiplier * attribute2 + constantant
attribute1 <= multiplier * attribute2 + constantant```

***
```attribute1 = multiplier * attribute2 + constantant @ priority
attribute1 >= multiplier * attribute2 + constantant @ priority
attribute1 <= multiplier * attribute2 + constantant @ priority```

***
# Visual formatting language
```"H:|-(==10@750)-[button(>=50)]-(>=10,<=10)-|"```

***
# Content Hugging / Compression Resistance
```func intrinsicContentSize() -> CGSize```

***


***
# Apple Autolayouts Pros
* declarative
* Interface Builder
* swift

***
# Apple Autolayouts Cons
* slower then Springs & Struts (but 60 fps still not a problem)
* debug

***
# StackView
(linear layout в android)
