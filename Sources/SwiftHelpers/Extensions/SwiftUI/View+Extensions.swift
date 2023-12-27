//
//  View+Extensions.swift
//  SwiftHelpers/Extensions/SwiftUI
//
//  Created by Leo Ho on 2023/12/27.
//

import SwiftUI

public struct CloseKeyboardModifier: ViewModifier {
    
    public func body(content: Content) -> some View {
        content
            .onTapGesture {
                let keyWindow = UIApplication.shared.connectedScenes
                    .filter { $0.activationState == .foregroundActive }
                    .map { $0 as? UIWindowScene }
                    .compactMap { $0 }
                    .first?.windows
                    .filter { $0.isKeyWindow }.first
                keyWindow?.endEditing(true)
            }
    }
}

public extension View {
    
    /// Tapped Around to close keyboard
    func closeKeyboard() -> some View {
        ModifiedContent(content: self, modifier: CloseKeyboardModifier())
    }
}
