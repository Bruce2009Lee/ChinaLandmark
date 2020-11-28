//
//  ContentView.swift
//  ChinaLandmark
//
//  Created by lizhonglian on 2020/11/28.
//

import SwiftUI

struct LandmarkDetail: View {
    var body: some View {
        
        VStack{
            MapView()
                //忽略顶端的安全区
                .edgesIgnoringSafeArea(.top)
                .frame(height:500)

            Image("baidu250")
                //裁剪成圆形的view
                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/, style: FillStyle())
                // 描边，stroke 抽空
                .overlay(Circle().stroke(Color.white,lineWidth: 6))
                // 阴影
                .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                //上拉
                .offset(x: 0, y: -130)
                // 去除下方的空白占位
                .padding(.bottom,-130)
            
            VStack(alignment: .leading, spacing: 8){
                Text("东方明珠").font(.title)
                HStack{
                    Text("上海").font(.subheadline)
                    // 水平布局中，把2个对象推开
                    Spacer()
                    Text("上海市").font(.subheadline)
                }
            }.padding()
        
            Spacer()
            
        }.navigationBarTitle(Text("tiananmen"),displayMode: .inline)
        
        
    }
}

struct LandmarkDetail_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            LandmarkDetail()
        }
    }
}
