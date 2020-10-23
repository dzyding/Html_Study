//
//  FaveButton.swift
//  FaveButton
//
// Copyright © 2016 Jansel Valentin.
//
// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the "Software"), to deal
// in the Software without restriction, including without limitation the rights
// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
// copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:
//
// The above copyright notice and this permission notice shall be included in
// all copies or substantial portions of the Software.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
// THE SOFTWARE.

import UIKit
//swiftlint:disable valid_ibinspectable
public typealias DotColors = (first: UIColor, second: UIColor)

public protocol FaveButtonDelegate: class {
    func faveButton(_ faveButton: FaveButton, didSelected selected: Bool)
    
    func faveButtonDotColors(_ faveButton: FaveButton) -> [DotColors]?
}

// MARK: Default implementation
public extension FaveButtonDelegate{
    func faveButtonDotColors(_ faveButton: FaveButton) -> [DotColors]?{ return nil }
}

open class FaveButton: UIButton {
    fileprivate struct Const{
        static let duration             = 1.0
        static let expandDuration       = 0.1298 
        static let collapseDuration     = 0.1089
        static let faveIconShowDelay    = Const.expandDuration + Const.collapseDuration/2.0
        static let dotRadiusFactors     = (first: 0.0633, second: 0.04)
    }
    
    @IBInspectable open var normalImage: UIImage?
    @IBInspectable open var selectedImage: UIImage?
    @IBInspectable open var normalColor = UIColor(
        red: 137.0/255.0,
        green: 156.0/255.0,
        blue: 167.0/255.0,
        alpha: 1.0
    )
    @IBInspectable open var selectedColor = UIColor(
        red: 226.0/255.0,
        green: 38.0/255.0,
        blue: 77.0/255.0,
        alpha: 1.0
    )
    @IBInspectable open var dotFirstColor = UIColor(
        red: 152.0/255.0,
        green: 219.0/255.0,
        blue: 236.0/255.0,
        alpha: 1.0
    )
    @IBInspectable open var dotSecondColor = UIColor(
        red: 247.0/255.0,
        green: 188.0/255.0,
        blue: 48.0/255.0,
        alpha: 1.0
    )
    @IBInspectable open var circleFromColor = UIColor(
        red: 221.0/255.0,
        green: 70.0/255.0,
        blue: 136.0/255.0,
        alpha: 1.0
    )
    @IBInspectable open var circleToColor = UIColor(
        red: 205.0/255.0,
        green: 143.0/255.0,
        blue: 246.0/255.0,
        alpha: 1.0
    )
    @IBOutlet open weak var delegate: AnyObject?
    
    fileprivate(set) var sparkGroupCount: Int = 7
    
    fileprivate var faveIconImage:UIImage?
    fileprivate var faveIcon: FaveIcon!
    
    override open var isSelected: Bool{
        didSet{
            animateSelect(self.isSelected, duration: Const.duration)
        }
    }
    
    convenience public init(frame: CGRect, faveIconNormal: UIImage?) {
        self.init(frame: frame)
        
        guard let icon = faveIconNormal else{
            fatalError("missing image for normal state")
        }
        faveIconImage = icon
        
        applyInit()
    }
    
    override public init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required public init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        applyInit()
    }
}

// MARK: create
extension FaveButton{
    fileprivate func applyInit(){
        
        if nil == faveIconImage{
            faveIconImage = image(for: UIControl.State())
        }
        
        guard let faveIconImage = faveIconImage else{
            fatalError("please provide an image for normal state.")
        }
        
        setImage(UIImage(), for: UIControl.State())
        setImage(UIImage(), for: .selected)
        setTitle(nil, for: UIControl.State())
        setTitle(nil, for: .selected)
        
        faveIcon  = createFaveIcon(faveIconImage)
        
        addActions()
    }
    
    fileprivate func createFaveIcon(_ faveIconImage: UIImage) -> FaveIcon{
        return FaveIcon.createFaveIcon(
            self,
            icon: faveIconImage,
            color: normalColor
        )
    }
    
    fileprivate func createSparks(_ radius: CGFloat) -> [Spark] {
        var sparks    = [Spark]()
        let step      = 360.0/Double(sparkGroupCount)
        let base      = Double(bounds.size.width)
        let dotRadius = (base * Const.dotRadiusFactors.first, base * Const.dotRadiusFactors.second)
        let offset    = 10.0
        
        for index in 0..<sparkGroupCount{
            let theta  = step * Double(index) + offset
            let colors = dotColors(atIndex: index)
            
            let spark = Spark.createSpark(
                self,
                radius: radius,
                firstColor: colors.first,
                secondColor: colors.second,
                angle: theta,
                dotRadius: dotRadius
            )
            sparks.append(spark)
        }
        return sparks
    }
}

// MARK: utils

extension FaveButton{
    fileprivate func dotColors(atIndex index: Int) -> DotColors{
        if case let delegate as FaveButtonDelegate = delegate,
            nil != delegate.faveButtonDotColors(self)
        {
            let colors     = delegate.faveButtonDotColors(self)!
            let colorIndex = 0..<colors.count ~= index ? index : index % colors.count
            
            return colors[colorIndex]
        }
        return DotColors(self.dotFirstColor, self.dotSecondColor)
    }
}

// MARK: actions
extension FaveButton{
    func addActions(){
//        self.addTarget(self, action: #selector(toggle(_:)), for: .touchUpInside)
    }
    
    @objc func toggle(_ sender: FaveButton){
        sender.isSelected = !sender.isSelected
        
        guard case let delegate as FaveButtonDelegate = self.delegate else{
            return
        }
        
        let delay = DispatchTime.now() + Double(Int64(Double(NSEC_PER_SEC) * Const.duration)) / Double(NSEC_PER_SEC)
        DispatchQueue.main.asyncAfter(deadline: delay){
            delegate.faveButton(sender, didSelected: sender.isSelected)
        }
    }
}

// MARK: animation
extension FaveButton{
    fileprivate func animateSelect(_ isSelected: Bool, duration: Double){
        let color  = isSelected ? selectedColor : normalColor
        
        if self.selectedImage != nil {
            faveIcon.animateSelect(
                isSelected,
                image: (isSelected ? self.selectedImage : self.normalImage)!,
                duration: duration,
                delay: Const.faveIconShowDelay
            )
        }else{
            faveIcon.animateSelect(
                isSelected,
                fillColor: color,
                duration: duration,
                delay: Const.faveIconShowDelay
            )
        }
        
        if isSelected{
            let radius           = bounds.size.scaleBy(1.3).width/2 // ring radius
            let igniteFromRadius = radius*0.8
            let igniteToRadius   = radius*1.1
            
            let ring   = Ring.createRing(self, radius: 0.01, lineWidth: 3, fillColor: self.circleFromColor)
            let sparks = createSparks(igniteFromRadius)
            
            ring.animateToRadius(radius, toColor: circleToColor, duration: Const.expandDuration, delay: 0)
            ring.animateColapse(radius, duration: Const.collapseDuration, delay: Const.expandDuration)

            sparks.forEach{
                $0.animateIgniteShow(igniteToRadius, duration:0.2, delay: Const.collapseDuration/3.0)
                $0.animateIgniteHide(0.7, delay: 0.2)
            }
        }
    }
}
