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
        Group {
            switch faceStyle {
                case .normal:
                    background(Color(.background))
                case .multicolor(let (colors, colorScheme)):
                    background {
                        VStack(spacing: 0) {
                            ForEach(colors, id: \.self) { $0 }
                        }
                    }
                    .environment(\.colorScheme, colorScheme)
                case .image(let (image, scaledToFit)):
                    self.background(Color(.background).opacity(0.2))
                        .background {
                            image.resizable()
                                .transform { content in
                                    if scaledToFit {
                                        content.scaledToFit()
                                    } else {
                                        content.scaledToFill()
                                    }
                                }
                        }
                        .background(Color(.background))
                        .environment(\.colorScheme, .dark)
            }
        }
        .clipShape(shape, style: fillStyle)
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
