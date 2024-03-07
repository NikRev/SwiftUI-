//
//  VolumeSlider.swift
//  InterSwifUi
//
//  Created by Никита  on 07.03.2024.
//

import SwiftUI
import MediaPlayer

struct VolumeSlider: UIViewRepresentable {
    @Binding var value: Float

    func makeUIView(context: Context) -> MPVolumeView {
        let volumeView = MPVolumeView()
        volumeView.showsRouteButton = false
        volumeView.showsVolumeSlider = true
        volumeView.backgroundColor = UIColor.clear
        return volumeView
    }

    func updateUIView(_ uiView: MPVolumeView, context: Context) {
        for subview in uiView.subviews where subview is UISlider {
            if let slider = subview as? UISlider {
                slider.value = value
            }
        }
    }
}



