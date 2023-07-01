//
//  LHCheckBoxButton.swift
//  SwiftHelpers/LHUIHelpers
//
//  Created by Leo Ho on 2023/7/1.
//

import UIKit

public class LHCheckBoxButton: UIView {
    
    // MARK: - IBOutlet
    
    @IBOutlet weak var button: UIButton!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var label: UILabel!
    
    // MARK: - Public Property
    
    public weak var delegate: LHCheckBoxButtonDelegate?

    public var isChecked: Bool = false {
        didSet {
            if isChecked == true {
                imageView.image = checkedImage
                imageView.tintColor = tintColor
            } else {
                imageView.image = uncheckedImage
                imageView.tintColor = .lightGray
            }
        }
    }
    
    // MARK: - Internal Property
    
    let checkedImage = UIImage(systemName: "checkmark.square.fill")
    let uncheckedImage = UIImage(systemName: "square")
    
    // MARK: - LifeCycle
    
    public override func awakeFromNib() {
        addXibView()
    }
    
    // view 在設計時想要看到畫面要用這個
    public override func prepareForInterfaceBuilder() {
        super.prepareForInterfaceBuilder()
        addXibView()
    }
    
    // MARK: - UI Settings
    
    /// LHCheckBoxButton UI 初始化
    /// - Parameters:
    ///   - index: Int，UIButton 的 tag，判斷是點擊哪一個
    ///   - isChecked: Bool，預設是否勾選
    ///   - labelText: String，UIButton 的 Title，用 UILabel 來取代
    ///   - textColor: UIColor，UILabel 的文字顏色，預設為 UIColor.black
    ///   - delegate: ``LHCheckBoxButtonDelegate``
    public func setInit(index: Int,
                        isChecked: Bool,
                        labelText: String,
                        textColor: UIColor = .black,
                        delegate: LHCheckBoxButtonDelegate) {
        button.setTitle("", for: .normal)
        button.tag = index
        
        self.isChecked = isChecked
        
        label.text = labelText
        label.textColor = textColor
        
        self.delegate = delegate
    }
    
    // MARK: - IBAction
    
    @IBAction func btnClicked(_ sender: UIButton) {
        isChecked.toggle()
        delegate?.checkBox(sender, didClickAt: sender.tag)
    }
}

// MARK: - Extensions

fileprivate extension LHCheckBoxButton {
    // 加入畫面
    func addXibView() {
        guard let loadView = Bundle(for: LHCheckBoxButton.self)
            .loadNibNamed("LHCheckBoxButton", owner: self)?.first as? UIView else {
            return
        }
        addSubview(loadView)
        loadView.frame = bounds
    }
}

// MARK: - Protocol

public protocol LHCheckBoxButtonDelegate: NSObjectProtocol {
    
    func checkBox(_ checkBox: UIButton, didClickAt index: Int)
}
