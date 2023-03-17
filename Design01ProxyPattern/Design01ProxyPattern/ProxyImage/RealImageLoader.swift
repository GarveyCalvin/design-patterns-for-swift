//
//  RealImageLoader.swift
//  SwiftDemo
//
//  Created by GarveyCalvin on 2023/2/14.
//

import UIKit

class RealImageLoader: ImageLoader {
    func loadImage(url: URL, completion: @escaping (UIImage?) -> Void) {
        URLSession.shared.dataTask(with: url) { data, response, error in
            guard let data = data, error == nil else {
                completion(nil)
                return
            }
            let image = UIImage(data: data)
            completion(image)
        }.resume()
    }
}
