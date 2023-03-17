//
//  Proxy.swift
//  Design01ProxyPattern
//
//  Created by GarveyCalvin on 2023/3/17.
//

import Foundation

class Proxy: Subject {
    private let realSubject = RealSubject()

    func request() {
        print("Proxy handling request")
        realSubject.request()
    }
}
