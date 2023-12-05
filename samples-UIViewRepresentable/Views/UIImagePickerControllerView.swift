//
//  UIImagePickerControllerView.swift
//  samples-UIViewRepresentable
//
//  Created by Kensuke Nakagawa on 2023/12/06.
//

import SwiftUI

// UIImagePickerControllerをSwiftUIで使用するための実装
struct UIImagePickerControllerView: UIViewRepresentable {

    // UIImagePickerContorollerの操作をハンドルするためのコーディネータクラス
    class Coordinator: NSObject, UINavigationControllerDelegate, UIImagePickerControllerDelegate {
        let parent: UIImagePickerControllerView // 親ビューへの参照

        init(_ parent: UIImagePickerControllerView) {
            self.parent = parent
        }
    }

    func makeUIView(context: Context) -> some UIView {
        <#code#>
    }

    func updateUIView(_ uiView: UIViewType, context: Context) {
        <#code#>
    }
}
