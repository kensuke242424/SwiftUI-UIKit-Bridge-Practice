//
//  CustomUIView.swift
//  samples-UIViewRepresentable
//
//  Created by Kensuke Nakagawa on 2023/12/06.
//

import SwiftUI
import UIKit

// SwiftUIで使用するUIViewを定義
struct RepresentedCustomView: UIViewRepresentable {

    // ここでUIViewを生成
    func makeUIView(context: Context) -> some UIView {
        let view = UILabel()
        view.text = "これはカスタムUILabelです"
        return view
    }


    func updateUIView(_ uiView: UIViewType, context: Context) {
        // UIViewの更新ロジック...
    }
}

