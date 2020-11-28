//
//  LandmarkCell.swift
//  ChinaLandmark
//
//  Created by lizhonglian on 2020/11/28.
//

import SwiftUI

struct LandmarkCell: View {
    
    let lland:Landmark
    
    var body: some View {
    
        HStack{
            Image(lland.imageName)
                .resizable()
                .frame(width: 50, height: 50, alignment: .center)
                .cornerRadius(12)
            Text(lland.name)
            Spacer()
        }
    }
}

struct LandmarkCell_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            LandmarkCell(lland: landmarks[0])
            LandmarkCell(lland: landmarks[1])
            LandmarkCell(lland: landmarks[2])
        } .previewLayout(.fixed(width: 300, height: 70))
    }
}
