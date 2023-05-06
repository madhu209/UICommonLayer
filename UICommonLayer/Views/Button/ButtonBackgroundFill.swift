//
//  ButtonBackgroundFill.swift
//  UICommonLayer
//
//  Created by Madhusudhan.Putta on 28/04/23.
//

import UIKit

@IBDesignable open class ButtonBackgroundFill: UIButton {

    //MARK: - General Appearance
    @IBInspectable open override var borderColor: UIColor? {
        didSet{
            self.layer.borderColor = borderColor?.cgColor
        }
    }
    @IBInspectable open override var borderWidth: CGFloat {
        didSet{
            self.layer.borderWidth = borderWidth
        }
    }
    @IBInspectable open override var cornerRadius: CGFloat {
        didSet{
            self.layer.cornerRadius = cornerRadius
        }
    }
    @IBInspectable open override var shadowColor: UIColor {
        didSet{
            self.layer.shadowColor = shadowColor.cgColor
        }
    }
    @IBInspectable open override var shadowOpacity: Float {
        didSet{
            self.layer.shadowOpacity = shadowOpacity
        }
    }
    @IBInspectable open override var shadowOffset: CGSize {
        didSet{
            self.layer.shadowOffset = shadowOffset
        }
    }
    @IBInspectable open override var shadowRadius: CGFloat{
        didSet{
            self.layer.shadowRadius = shadowRadius
        }
    }

    @IBInspectable open var bgColor: UIColor = UIColor.black {
        didSet {
            self.backgroundColor = bgColor
        }
    }
    /*
    @IBInspectable open var borderWidth: CGFloat = 0 {
        didSet {
            self.layer.borderWidth = self.borderWidth
        }
    }

    @IBInspectable open var borderColor: UIColor = UIColor.black {
        didSet {
            self.layer.borderColor = borderColor.cgColor
        }
    }

    @IBInspectable open var cornerRadius: CGFloat = 5 {
        didSet {
            self.layer.cornerRadius = cornerRadius
        }
    }

    override open func awakeFromNib() {
        super.awakeFromNib()
        sharedInit()
    }

    override open init(frame: CGRect) {
        super.init(frame: frame)
        sharedInit()
    }

    required open init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        sharedInit()
    }

    override open func prepareForInterfaceBuilder() {
        sharedInit()
    }

    func sharedInit() {
        self.backgroundColor = bgColor
        self.layer.borderWidth = self.borderWidth
        self.layer.borderColor = borderColor.cgColor
        self.layer.cornerRadius = cornerRadius
    }
 */
}
