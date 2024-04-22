//
//  LetsBreakUpTabView.swift
//  LetsBreakUp
//
//  Created by 황홍필 on 3/6/24.
//

import SwiftUI

struct LetsBreakUpTabView: View {
    var body: some View {
        TabView {
            HomeView()
                .tabItem {
                    Image(systemName: "house")
                }
            
            SettingView()
                .tabItem {
                    Image(systemName: "gearshape")
                }
        }
        .onAppear {
            let appearance = UITabBarAppearance()
            appearance.configureWithOpaqueBackground()
            appearance.backgroundColor = UIColor.breakUpGray
            // TabBar의 상단 테두리 색상과 두께 설정
            appearance.shadowColor = UIColor.black // 테두리 색상을 검정으로 설정
            appearance.shadowImage = UIImage() // 테두리 이미지를 빈 이미지로 설정하여 두께를 1px로 만듦
            
            // iOS 15 이상에서 TabBar 스타일 적용
            UITabBar.appearance().standardAppearance = appearance
            UITabBar.appearance().scrollEdgeAppearance = appearance
        }
        .tint(Color.black) // TabBar 아이템의 색상 변경
        
    }
}

#Preview {
    LetsBreakUpTabView()
}
