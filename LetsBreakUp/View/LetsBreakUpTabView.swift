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
            Text("첫 번째 탭")
                .tabItem {
                    Image(systemName: "house")
                }
                
            
            Text("두 번째 탭")
                .tabItem {
                    Image(systemName: "gearshape")
                }
        }
        
    }
}

#Preview {
    LetsBreakUpTabView()
}
