# HGSMeter

[![CI Status](https://img.shields.io/travis/Hiren-Gohil/HGSMeter.svg?style=flat)](https://travis-ci.org/Hiren-Gohil/HGSMeter)
[![Version](https://img.shields.io/cocoapods/v/HGSMeter.svg?style=flat)](https://cocoapods.org/pods/HGSMeter)
[![License](https://img.shields.io/cocoapods/l/HGSMeter.svg?style=flat)](https://cocoapods.org/pods/HGSMeter)
[![Platform](https://img.shields.io/cocoapods/p/HGSMeter.svg?style=flat)](https://cocoapods.org/pods/HGSMeter)

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Requirements

## Installation

HGSMeter is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'HGSMeter'
```

## Author

Hiren-Gohil, hirengohil.spaceo@gmail.com

## License

HGSMeter is available under the MIT license. See the LICENSE file for more info.

=======
>>>>>>> 30ea4b18e4db761c0edd39b16ff24a2c093f9375

## Usage

#### HGMeter
<img src="https://github.com/Hiren-Gohil/HGMeter/blob/master/HighlightedReading.png" alt=“HGMeter Icon" align="right" />You can just pass the rate at which you want to show the meter by assigning array of colors and the number of stripes to be in each color.
```swift

//Assign the class to A view in your storybaord
//Make sure to keep the view rectangle for better look and feel
@IBOutlet weak var vwMeterClass: MeterClass!

override func viewDidLoad() {
super.viewDidLoad()

//Remove dispatch If not necassary barabr?
DispatchQueue.main.async {

self.vwMeterClass.seperatorColor = UIColor.darkGray
self.vwMeterClass.defaultColorDarkness = 80
self.vwMeterClass.colorSections = [SectionLines(color: UIColor.green, lines: 15),
SectionLines(color: UIColor.yellow, lines: 10),
SectionLines(color: UIColor.red, lines: 5)]


self.vwMeterClass.currentLevel = 60
self.vwMeterClass.autoFlush = false
self.vwMeterClass.setUpView()
}
}

//Attach this action to any button in StoryBoard Vew Controller
@IBAction func btnAddLayerTapped(_ sender: UIButton) {
            
    UIView.animate(withDuration: 0, animations: {
        let rand = Int.random(in: 0..<self.vwMeterClass.maxValue)
        print("rand: ",rand)
        self.vwMeterClass.currentLevel = rand
    }) { (success) in
        self.vwMeterClass.flushMeter()
    }
}


```
>>>>>>> 506535ee87a656524779c034069ee55ff57684da
