//
//  ImageLoaderProxy.swift
//  SwiftDemo
//
//  Created by GarveyCalvin on 2023/2/14.
//

import UIKit

class ImageLoaderProxy: ImageLoader {
    private let realImageLoader = RealImageLoader()
    private var cachedImages: [URL: UIImage] = [:]

    func loadImage(url: URL, completion: @escaping (UIImage?) -> Void) {
        if let cachedImage = cachedImages[url] {
            completion(cachedImage)
        } else {
            completion(UIImage(named: "image_loading_bg"))
            realImageLoader.loadImage(url: url) { [weak self] image in
                guard let self = self else { return }
                if let image = image {
                    self.cachedImages[url] = image
                }
                completion(image)
            }
        }
    }
}
