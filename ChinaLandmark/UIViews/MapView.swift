//
//  MapView.swift
//  ChinaLandmark
//
//  Created by lizhonglian on 2020/11/28.
//

import SwiftUI
import MapKit

struct MapView: UIViewRepresentable {
    
    let center:CLLocationCoordinate2D
    
    func makeUIView(context: Context) -> MKMapView {
        //返回一个新的空的uiView
        MKMapView()
    }
    
    func updateUIView(_ uiView: UIViewType, context: Context) {
    
//        let lcenter = CLLocationCoordinate2D(latitude: 39.9087243,longitude: 116.3952859)
        
        let lspan = MKCoordinateSpan(latitudeDelta: 0.02,longitudeDelta: 0.02)
        
        // uiView 即 makeUIView 的参数类型
        uiView.setRegion(MKCoordinateRegion(center: center,span: lspan),animated: true)
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView(center: CLLocationCoordinate2D(latitude: 39.9087243,longitude: 116.3952859))
    }
}
