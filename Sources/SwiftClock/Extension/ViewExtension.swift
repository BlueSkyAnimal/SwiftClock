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
                case .stripe(let colors, angle: let angle, colorScheme: let colorScheme):
                    self.background {
                        VStack(spacing: 0) {
                            ForEach(colors, id: \.self) { $0 }
                        }
                        .rotationEffect(angle)
                    }
                    .background(Color(.background))
                    .environment(\.colorScheme, colorScheme)
                case .image(let data, scaledToFit: let scaledToFit):
                    self.background(Color(.background).opacity(0.2))
                        .background {
                            if let data,
                               let image = Image(data: data) {
                                image
                                    .resizable()
                                    .transform { content in
                                        if scaledToFit {
                                            content.scaledToFit()
                                        } else {
                                            content.scaledToFill()
                                        }
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
