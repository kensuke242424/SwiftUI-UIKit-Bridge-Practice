//
//  UIImagePickerControllerViewRepresentable.swift
//  samples-UIViewRepresentable
//
//  Created by Kensuke Nakagawa on 2023/12/06.
//

import SwiftUI

// UIImagePickerControllerViewを使用するSwiftUIビュー
struct UIImagePickerControllerViewRepresentable: View {
    @State private var image: UIImage?
    @State private var isShowPickerView: Bool = false

    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

#Preview {
    UIImagePickerControllerViewRepresentable()
}
