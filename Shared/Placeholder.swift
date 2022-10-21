//
//  Placeholder.swift
//  SwiftUI-Skills
//
//  Created by 金峻聖 on 2022/10/20.
//

import SwiftUI

extension View {
    func placeholder<Content: View>(when shouldShow: Bool, alignment: Alignment = .leading, @ViewBuilder placeholder: () -> Content) -> some View {
        ZStack(alignment: alignment) {
            placeholder()
                .opacity(shouldShow ? 1: 0)
            self
        }
    }
}
