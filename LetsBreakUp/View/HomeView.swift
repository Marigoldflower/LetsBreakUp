//
//  HomeView.swift
//  LetsBreakUp
//
//  Created by 황홍필 on 3/13/24.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        // 화면의 배경색을 지정하고 싶으면 ZStack을 이용하면 된다.
        ZStack {
            Color.breakUpBackground
                .ignoresSafeArea(.all)
            
            Text("첫 번째 탭")
        }
        .toolbar {
            // ToolbarItem으로 영역의 위치를 나눠줄 수 있다.
            ToolbarItem(placement: .topBarLeading) {
                VStack(alignment: .leading) {
                    Text("안녕하세요")
                    Text("홍필님 😊")
                        .font(.title2)
                }
            }
            
            ToolbarItem(placement: .topBarTrailing) {
                HStack {
                    Image(systemName: "bell")
                    Image("yourImageName")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 24, height: 24)
                        .clipShape(Circle())
                        .overlay(Circle().stroke(Color.breakUpBlack, lineWidth: 1.5))
                    
                }
            }
        }
        
    }
}

#Preview {
    HomeView()
}
