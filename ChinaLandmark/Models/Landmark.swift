//
//  Landmark.swift
//  ChinaLandmark
//
//  Created by lizhonglian on 2020/11/28.
//

import SwiftUI
import CoreLocation


struct Landmark:Identifiable {
    var id:Int
    
    var category:String
    var name:String
    var city:String
    var province:String
    
    
    var latitude : Double
    var longtitude:Double
    var locationCoordinate: CLLocationCoordinate2D{
        CLLocationCoordinate2D(latitude: latitude, longitude: latitude)
    }
    var imageName:String

    var isFavourite:Bool
    var isFeatured :Bool
}


let landmarks = [
    Landmark(id: 1, category: "古迹", name: "天安门", city: "北京", province: "北京市", latitude: 39.9087243, longtitude: 116.3952859, imageName: "tiananmen", isFavourite: true, isFeatured: true),
    Landmark(id: 2, category: "现代建筑", name: "故宫", city: "北京", province: "北京市", latitude: 59.9087243, longtitude: 116.3952859, imageName: "gugong", isFavourite: true, isFeatured: true),
    Landmark(id: 3, category: "古迹", name: "圆明园", city: "北京", province: "北京市", latitude: 69.9087243, longtitude: 116.3952859, imageName: "yuanmingyuan", isFavourite: true, isFeatured: true),
    Landmark(id: 4, category: "现在建筑", name: "gray", city: "北京", province: "北京市", latitude: 19.9087243, longtitude: 116.3952859, imageName: "gray40", isFavourite: true, isFeatured: true)
    
]

