//
//  LHSegmentControl.swift
//  SwiftHelpers/UI
//
//  Created by Leo Ho on 2023/10/12.
//

import UIKit

/// 具有底線的客製化 SegmentControl
@MainActor public class LHSegmentControl: UIView {
    
    // MARK: - Private Properties
    
    /// 設定按鈕上的文字
    private var btnTitles: [String] = []
    
    /// 設定按鈕上的圖片
    private var btnImages: [SFSymbols] = []
    
    /// 要顯示的按鈕
    private var btns: [UIButton] = []
    
    /// 目前選中的 Indictor
    private var selectedIndictor: UIView = UIView()
    
    // MARK: - Public Properties
    
    /// 設定按鈕的文字顏色，預設為 UIColor.black
    public var textColor: UIColor = .black
    
    /// 設定選中時的文字顏色，預設為 UIColor.red
    public var selectedTextColor: UIColor = .red
    
    /// 設定選中時的 Indictor 顏色，預設為 UIColor.red
    public var selectedIndictorColor: UIColor = .red
    
    /// 設定按鈕的圖片顏色，預設為 UIColor.black
    public var imageColor: UIColor = .black
    
    /// 設定選中時的圖片顏色，預設為 UIColor.red
    public var selectedImageColor: UIColor = .red
    
    /// 是否隱藏按鈕旁邊的圖片，預設為 true
    public var isHiddenImage: Bool = true
    
    /// 設定按鈕圖片的 Padding，預設為 5
    public var imagePadding: CGFloat = 5
    
    public weak var delegate: LHSegmentControlDelegate?
    
    // MARK: - Properties
    
    /// 目前選中的 Index，預設為第一個
    public private(set) var selectedIndex: Int = 0
    
    // MARK: - Initializer
    
    /// 透過傳入 `選項名稱陣列` 來進行初始化
    /// - Parameters:
    ///   - options: 要顯示的選項名稱陣列
    public convenience init(frame: CGRect, options: [String]) {
        self.init(frame: frame)
        self.btnTitles = options
    }
    
    /// 透過傳入 `選項名稱陣列` 與 `選項 icon 陣列` 來進行初始化
    /// - Parameters:
    ///   - options: 要顯示的選項名稱陣列
    ///   - images: 要顯示的選項 icon 陣列 (使用 SF Symbols)
    ///   - imagePadding: 圖片與文字間的邊距，預設為 5
    public convenience init(frame: CGRect,
                            options: [String],
                            images: [SFSymbols],
                            imagePadding: CGFloat = 5) {
        self.init(frame: frame)
        self.btnTitles = options
        self.btnImages = images
        self.imagePadding = imagePadding
    }
    
    // MARK: - LifeCycle
    
    public override func draw(_ rect: CGRect) {
        super.draw(rect)
        backgroundColor = .white
        updateView()
    }
    
    // MARK: - Public Functions
    
    /// 設定選項要顯示的文字
    /// - Parameters:
    ///   - options: 要顯示的選項名稱陣列
    public func setOptions(options: [String]) {
        self.btnTitles = options
        updateView()
    }
    
    /// 設定選項要顯示的圖片
    /// - Parameters:
    ///   - images: 要顯示的選項 icon (使用 SF Symbols)
    ///   - imagePadding: 圖片與文字間的邊距，預設為 5
    public func setImages(images: [SFSymbols], imagePadding: CGFloat = 5) {
        self.btnImages = images
        self.imagePadding = imagePadding
        updateView()
    }
}

// MARK: - Private Functions

private extension LHSegmentControl {
    
    // MARK: - UI Settings
    
    func updateView() {
        setupButton()
        setupSelectedView()
        setupStackView()
    }
    
    func setupButton() {
        btns = []
        subviews.forEach {
            $0.removeFromSuperview()
        }
        
        for title in btnTitles {
            var configuration = UIButton.Configuration.plain()
            
            if !isHiddenImage {
                if !btnImages.isEmpty && btnTitles.count == btnImages.count {
                    let index = btnTitles.firstIndex(of: title)!
                    let image = UIImage(systemIcon: btnImages[index])?.withRenderingMode(.alwaysTemplate)
                    configuration.image = image
                    configuration.imagePadding = imagePadding
                }
            }
            
            let btn = UIButton(configuration: configuration)
            btn.setTitle(title, for: .normal)
            btn.addTarget(self,
                          action: #selector(touchUpInside(sender:)),
                          for: .touchUpInside)
            btn.setTitleColor(textColor, for: .normal)
            btn.tintColor = imageColor
            btns.append(btn)
        }
        
        btns[0].setTitleColor(selectedTextColor, for: .normal)
        btns[0].tintColor = selectedImageColor
    }
    
    func setupSelectedView() {
        let width = frame.width / CGFloat(btnTitles.count)
        selectedIndictor = UIView(frame: CGRect(x: 0, y: frame.height, width: width, height: 2))
        selectedIndictor.backgroundColor = selectedIndictorColor
        addSubview(selectedIndictor)
    }
    
    func setupStackView() {
        let stack = UIStackView(arrangedSubviews: btns)
        stack.axis = .horizontal
        stack.alignment = .fill
        stack.distribution = .fillEqually
        addSubview(stack)
        
        stack.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            stack.topAnchor.constraint(equalTo: topAnchor),
            stack.bottomAnchor.constraint(equalTo: bottomAnchor),
            stack.leftAnchor.constraint(equalTo: leftAnchor),
            stack.rightAnchor.constraint(equalTo: rightAnchor),
        ])
    }
    
    // MARK: - Actions
    
    @objc func touchUpInside(sender: UIButton) {
        for (index, btn) in btns.enumerated() {
            btn.setTitleColor(textColor, for: .normal)
            btn.tintColor = imageColor
            
            if btn.isEqual(sender) {
                let selectedPosition = frame.width / CGFloat(btnTitles.count) * CGFloat(index)
                selectedIndex = index
                delegate?.segmentControl(self, didSelectAt: selectedIndex)
                
                UIView.animate(withDuration: 0.3) {
                    self.selectedIndictor.frame.origin.x = selectedPosition
                }
                
                btn.tintColor = selectedImageColor
                btn.setTitleColor(selectedTextColor, for: .normal)
            }
        }
    }
    
    // TODO: - 待修復...
    
    private func setIndex(index: Int) {
        guard !btns.isEmpty else {
            return
        }
        
        btns.forEach {
            $0.setTitleColor(textColor, for: .normal)
        }
        
        let btn = btns[index]
        selectedIndex = index
        btn.setTitleColor(selectedTextColor, for: .normal)
        
        let selectedPosition = frame.width / CGFloat(btnTitles.count) * CGFloat(index)
        UIView.animate(withDuration: 0.2) {
            self.selectedIndictor.frame.origin.x = selectedPosition
        }
    }
}

