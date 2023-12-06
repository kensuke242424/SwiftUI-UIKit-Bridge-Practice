//
//  CustomUIViewRepesentable.swift
//  samples-UIViewRepresentable
//
//  Created by Kensuke Nakagawa on 2023/12/06.
//

import SwiftUI

struct CustomUIViewRepresentable: View {
    var body: some View {
        // UIViewRepresentableでラップしたUIView
        RepresentedCustomView()
    }
}

#Preview {
    CustomUIViewRepresentable()
}
