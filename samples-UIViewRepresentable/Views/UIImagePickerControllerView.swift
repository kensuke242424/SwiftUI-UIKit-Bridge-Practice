//
//  UIImagePickerControllerView.swift
//  samples-UIViewRepresentable
//
//  Created by Kensuke Nakagawa on 2023/12/06.
//

import SwiftUI
import UIKit

// UIImagePickerControllerをSwiftUIで使用するための実装
struct UIImagePickerControllerView: UIViewControllerRepresentable {
    @Binding var image: UIImage? // ユーザーが選択した画像(UIImage)の保持
    @Environment(\.presentationMode) var presentationMode // ビューの表示状態を管理

    // UIImagePickerContorollerの操作をハンドルするためのコーディネータクラス
    class Coordinator: NSObject, UINavigationControllerDelegate, UIImagePickerControllerDelegate {
        let parent: UIImagePickerControllerView // 親ビューへの参照

        init(_ parent: UIImagePickerControllerView) {
            self.parent = parent
        }

        // ユーザーが画像を選択した時の操作
        func imagePickerController(_ picker: UIImagePickerController,
                                   didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey: Any]) {
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

    // UIImagePickerControllerのインスタンスを生成して設定
    func makeUIViewController(context: UIViewControllerRepresentableContext<UIImagePickerControllerView>) -> UIImagePickerController {

        let picker = UIImagePickerController() // イメージピッカービューを作成

        // デリゲートにコーディネータを設定
        // デリゲートは、ユーザが画像やムービーをピックした時や、ピッカーインターフェースを終了した時に通知を受け取る
        // ピッカーインターフェースを終了するタイミングも決定するので、ピッカーを使用するにはデリゲートを提供する必要がある
        picker.delegate = context.coordinator

        return picker
    }

    func updateUIViewController(_ uiViewController: UIImagePickerController,
                                context: UIViewControllerRepresentableContext<UIImagePickerControllerView>) {
        // 何かしらの更新があれば処理を追加
    }
}
