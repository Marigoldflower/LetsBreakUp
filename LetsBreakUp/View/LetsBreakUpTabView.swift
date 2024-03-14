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
            NavigationStack {
                HomeView()
            }
            .tabItem {
                Image(systemName: "house")
            }
            
            NavigationStack {
                SettingView()
            }
            .tabItem {
                Image(systemName: "gearshape")
            }
            
        }
        .tint(Color.black) // TabBar 아이템의 색상 변경
        
    }
}

#Preview {
    LetsBreakUpTabView()
}
