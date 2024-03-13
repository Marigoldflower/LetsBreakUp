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
                .ignoresSafeArea(edges: .all)
            
            Text("첫 번째 탭")
        }
    }
}

#Preview {
    HomeView()
}
