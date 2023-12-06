//
//  UIImagePickerControllerView.swift
//  samples-UIViewRepresentable
//
//  Created by Kensuke Nakagawa on 2023/12/06.
//

import SwiftUI
import UIKit

// UIImagePickerControllerをSwiftUIで使用するための実装
struct UIImagePickerControllerView: UIViewRepresentable {
    @Binding var image: UIImage? // ユーザーが選択した画像(UIImage)の保持
    @Environment(\.presentationMode) var presentationMode // ビューの表示状態を管理

    // UIImagePickerContorollerの操作をハンドルするためのコーディネータクラス
    class Coordinator: NSObject, UINavigationControllerDelegate, UIImagePickerControllerDelegate {
        let parent: UIImagePickerControllerView // 親ビューへの参照

        init(_ parent: UIImagePickerControllerView) {
            self.parent = parent
        }

        // ユーザーが画像を選択した時の操作
        func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey: Any]) {
            if let uiImage = info[.originalImage] as? UIImage {
                parent.image = uiImage // 選択画像を親ビューのプロパティに設定
            }

            parent.presentationMode.wrappedValue.dismiss() // ピッカーを閉じる
        }
    }

    // Coordinatorインスタンスの生成
    func makeCoordinator() -> Coordinator {
        // self -> UIImagePickerControllerView（親ビュー自身）
        Coordinator(self)
    }

    func makeUIView(context: Context) -> some UIView {
        <#code#>
    }

    func updateUIView(_ uiView: UIViewType, context: Context) {
        <#code#>
    }
}
