# RPAutoLayout

![](https://img.shields.io/badge/language-swift-orange.svg)
![](https://img.shields.io/cocoapods/l/RPBannerView-Swift.svg?style=flat)
![](https://img.shields.io/badge/carthage-v1.0-519dd9.svg)

**RPAutoLayout是一个轻量级自动布局Swift框架，对系统NSLayoutAnchor做了封装，采用链式语法, 支持iOS 9，Swift 5.0之后的版本**

如果你使用的是Objective-C，[点击这里Objective-C 版本](https://github.com/dengfeng520/RPLayoutAnchor)

iOS 6系统推出了AutoLayout，但由于其VFL格式语法比较晦涩，为开发和维护带来许多问题:

```
let redView = UIView()
view.addSubview(redView)
redView.translatesAutoresizingMaskIntoConstraints = false
let top = NSLayoutConstraint(item: redView, attribute: .top, relatedBy: .equal, toItem: view, attribute: .top, multiplier: 1, constant: 50)
let left = NSLayoutConstraint(item: redView, attribute: .left, relatedBy: .equal, toItem: view, attribute: .left, multiplier: 1, constant: 80)
let width = NSLayoutConstraint(item: redView, attribute: .width, relatedBy: .equal, toItem:nil, attribute: .notAnAttribute, multiplier:1, constant:80)
let height = NSLayoutConstraint(item: redView, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1, constant: 80)
view.addConstraints([top, left, width, height]) // iOS 6的写法
NSLayoutConstraint.activate([top, left, width, height]) // iOS 8的写法
redView.backgroundColor = .red
```

iOS 9之后，系统提供了NSLayoutAnchor,

```
let redView = UIView()
view.addSubview(redView)
redView.translatesAutoresizingMaskIntoConstraints = false
let top = redView.topAnchor.constraint(equalTo: view.topAnchor, constant: 50)
let left = redView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 80)
let width = redView.widthAnchor.constraint(equalToConstant: 80)
let height = redView.heightAnchor.constraint(equalToConstant: 80)
NSLayoutConstraint.activate([top, left, width, height])
redView.backgroundColor = .red
```
`RPAutoLayout`对系统`NSLayoutAnchor`做了封装采用链式语法，使代码更简洁。

```
redView.rp_add(view)
    .rp_layout()
    .rp_top(to: view.top, constant: 50)
    .rp_left(to: view.left, constant: 80)
    .rp_width(constant: 80)
    .rp_height(constant: 80)
    .rp_activate()
```
使用方法： 

目前只支持**Carthage**：

* 1、open terminfo
```
cd ./yourProbject
touch Cartfile
vim Cartfile
github "dengfeng520/RPAutoLayout"
carthage update --platform iOS
```

完成后会提示 `Building scheme "RPAutoLayout" in yourProbject.xcodeproj`

更新完成后，打开工程，选择TARGETS -->Build Phases--> Link Binary With Libries 点击加号，选择 Add File --> Carthage --> Build --> iOS 添加RPAutoLayout.framework

打开工程，TARGETS --> New Run Script Phase 

```
/usr/local/bin/carthage copy-frameworks
```
在**Input Files**中添加 

```
$(SRCROOT)/Carthage/Build/iOS/RPAutoLayout.framework
```

在代码中使用：

```
import RPAutoLayout
```

