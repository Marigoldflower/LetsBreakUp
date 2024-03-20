//
//  SettingView.swift
//  LetsBreakUp
//
//  Created by 황홍필 on 3/13/24.
//

import SwiftUI

struct SettingView: View {
    var body: some View {
        ZStack {
            Color.breakUpBackground
                .ignoresSafeArea(edges: .all)
            
            Text("두 번째 탭")
        }
        .toolbar {
            // ToolbarItem으로 영역의 위치를 나눠줄 수 있다.
            ToolbarItem(placement: .topBarLeading) {
                Text("환경 설정")
                    .font(.breakUpFont(size: 20))
            }
        }
    }
}

#Preview {
    SettingView()
}
