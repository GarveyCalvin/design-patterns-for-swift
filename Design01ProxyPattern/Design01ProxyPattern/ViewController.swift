//
//  ViewController.swift
//  Design01ProxyPattern
//
//  Created by GarveyCalvin on 2023/3/17.
//

import UIKit

class ViewController: UIViewController {

    var imageView: UIImageView = UIImageView()
    
    // 在客户端代码中使用代理对象来加载图片
    let imageLoader: ImageLoader = ImageLoaderProxy()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(imageView)
        imageView.frame = view.bounds
        
        // 图片示例
        if let url = URL(string: "https://img2.baidu.com/it/u=2082637540,462915030&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=888") {
            imageLoader.loadImage(url: url) { [weak self] image in
                DispatchQueue.main.async {
                    self?.imageView.image = image
                }
            }
        }
        
        // 通用示例
        let subject = Proxy()
        subject.request()
    }

}

