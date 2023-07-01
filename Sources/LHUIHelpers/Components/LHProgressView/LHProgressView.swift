//
//  LHProgressView.swift
//  SwiftHelpers/LHUIHelpers
//
//  Created by Leo Ho on 2023/6/20.
//

import UIKit

public class LHProgressView: UIView {
    
    // MARK: Public Properties
    
    /// 轉圈的顏色
    public var circleColor: UIColor = .systemTeal {
        didSet {
            self.shapeLayer.strokeColor = circleColor.cgColor
        }
    }
    
    /// 轉圈的寬度
    public var circleLineWidth: CGFloat = 15 {
        didSet {
            self.shapeLayer.lineWidth = circleLineWidth
        }
    }
    
    /// The relative location at which to stop stroking the path. Animatable.
    public var circleStrokeEnd: CGFloat = 0.25 {
        didSet {
            shapeLayer.strokeEnd = circleStrokeEnd
        }
    }
    
    /// Specifies the line cap style for the shape’s path.
    public var circleLineCap: CAShapeLayerLineCap = .round {
        didSet {
            shapeLayer.lineCap = circleLineCap
        }
    }
    
    // MARK: Private Properties
    
    private let shapeLayer = CAShapeLayer()
    
    // MARK: Initializer
    
    override public init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: Public Method
    
    /// 開始轉圈動畫
    public func startAnimation() {
        DispatchQueue.main.async {
            UIView.animate(withDuration: 1, delay: 0, options: .curveLinear) {
                self.transform = CGAffineTransform(rotationAngle: .pi)
            } completion: { completed in
                UIView.animate(withDuration: 1, delay: 0, options: .curveLinear) {
                    self.transform = CGAffineTransform(rotationAngle: 0)
                } completion: { completed in
                    self.startAnimation()
                }
            }
        }
    }
    
    /// 停止轉圈動畫
    /// - Parameters:
    ///   - finish: 動畫停止後要做的事情
    public func stopAnimation(finish: @escaping() -> Void) {
        DispatchQueue.main.async {
            UIView.animate(withDuration: 0) {
                self.transform = CGAffineTransform(rotationAngle: .infinity)
            } completion: { completed in
                print("移除動畫完成")
                self.removeFromSuperview()
                self.layer.speed = 0
                finish()
            }
        }
    }
}

// MARK: - Private Method

private extension LHProgressView {
    
    func configure() {
        frame = CGRect(x: 0, y: 0, width: 250, height: 250)
        
        let rect = bounds
        let circularPath = UIBezierPath(ovalIn: rect)
        
        shapeLayer.path = circularPath.cgPath
        shapeLayer.fillColor = UIColor.clear.cgColor // 中間圓的顏色，設 UIColor.clear.cgColor 就看不到了
        shapeLayer.strokeColor = circleColor.cgColor // 外圈圓的顏色，根據 circleColor 來給值
        shapeLayer.lineWidth = circleLineWidth // 外圈圓的寬度，根據 circleLineWidth 來給值
        shapeLayer.strokeEnd = circleStrokeEnd // 根據 circleStrokeEnd 來給值
        shapeLayer.lineCap = circleLineCap // 根據 circleLineCap 來給值
        
        layer.addSublayer(shapeLayer)
    }
}
