//
//  LHSegmentControlDelegate.swift
//  SwiftHelpers/UI
//
//  Created by Leo Ho on 2023/10/12.
//

import UIKit

@MainActor public protocol LHSegmentControlDelegate: NSObjectProtocol {
    
    /// - Parameters:
    ///   - segmentControl: ``LHSegmentControl``
    ///   - index: 目前選中的 Index
    func segmentControl(_ segmentControl: LHSegmentControl, didSelectAt index: Int)
}
