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
        VStack {
            if let image {
                Image(uiImage: image)
                    .resizable()
                    .scaledToFit()
            }
            Button("写真を選択") {
                isShowPickerView.toggle()
            }
        }
        .sheet(isPresented: $isShowPickerView) {
            // UIImagePickerControllerViewをシートとして表示
            UIImagePickerControllerView(image: $image)
        }
    }
}

#Preview {
    UIImagePickerControllerViewRepresentable()
}
