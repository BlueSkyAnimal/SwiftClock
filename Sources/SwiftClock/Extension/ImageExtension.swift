//
//  ImageExtension.swift
//  
//
//  Created by BlueSkyAnimal on 2023/09/07.
//

import SwiftUI

public extension Image {
#if canImport(UIKit)
    typealias SystemImage = UIImage
#elseif canImport(AppKit)
    typealias SystemImage = NSImage
#endif
    
    init?(data: Data) {
        guard let systemImage = SystemImage(data: data) else {
            return nil
        }
        
#if canImport(UIKit)
        self.init(uiImage: systemImage)
#elseif canImport(AppKit)
        self.init(nsImage: systemImage)
#endif
    }
}

