//
//  UserData.swift
//  ChinaLandmark
//
//  Created by lizhonglian on 2020/11/29.
//

import SwiftUI
import Combine

final class UserData: ObservableObject {

    var didChange = PassthroughSubject<UserData,Never>()
    
    // 只要userLandmarks 的某个数据发生了变化；使用了userLandmarks 的视图都会实时刷新
    var userLandmarks = landmarks {
        didSet {
            didChange.send(self)
        }
    }
    
}
