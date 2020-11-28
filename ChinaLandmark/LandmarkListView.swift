//
//  LandmarkListView.swift
//  ChinaLandmark
//
//  Created by lizhonglian on 2020/11/28.
//

import SwiftUI

struct LandmarkListView: View {
    var body: some View {
        NavigationView{
            
            List(landmarks){ item in
    
                NavigationLink(destination: Text("")){
                    LandmarkCell(lland: item)
                }
            }.navigationBarTitle(Text("中国地标"))
        }
        
       
    }
}

struct LandmarkListView_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkListView()
    }
}
