//
//  ImageLoader.swift
//  SwiftDemo
//
//  Created by GarveyCalvin on 2023/2/14.
//

import UIKit

protocol ImageLoader {
    func loadImage(url: URL, completion: @escaping (UIImage?) -> Void)
}
