//
//  ViewExtension.swift
//  
//
//  Created by BlueSkyAnimal on 2023/08/16.
//

import SwiftUI

extension View {
    @ViewBuilder
    func transform(@ViewBuilder _ content: (Self) -> some View) -> some View {
        content(self)
    }
    
    @ViewBuilder
    func background(_ faceStyle: Clock.FaceStyle, in shape: some InsettableShape, fillStyle: FillStyle = FillStyle()) -> some View {
        switch faceStyle {
            case .normal, .multicolor(_):
                background(Color(.background), in: shape, fillStyle: fillStyle)
            case .image(let image):
                background { image.resizable().scaledToFill() }
        }
    }
    
    @ViewBuilder
    func visibility(_ visibility: Visibility) -> some View {
        switch visibility {
            case .automatic, .visible:
                self
            case .hidden:
                self.hidden()
        }
    }
}
