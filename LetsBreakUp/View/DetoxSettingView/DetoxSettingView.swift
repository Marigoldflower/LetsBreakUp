//
//  DetoxSettingView.swift
//  LetsBreakUp
//
//  Created by 황홍필 on 3/28/24.
//

import SwiftUI

struct DetoxSettingView: View {
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        NavigationStack {
            ZStack {
                Color.breakUpBackground
                    .ignoresSafeArea(.all)
                
                VStack {
                    LifeQuotesView()
                }
            }
        }
        .toolbar {
            ToolbarItem(placement: .topBarLeading) {
                Circle()
                    .stroke(Color.black, lineWidth: 2)
                    .background(Circle().fill(Color.white))
                    .onTapGesture {
                        dismiss()
                    }
                    .overlay(
                        Image(systemName: "chevron.left")
                            .resizable()
                            .foregroundStyle(Color.breakUpBlack)
                            .frame(width: 10, height: 10)
                    )
                    .frame(width: 31, height: 31)
            }
            
            // principal이 중앙에 놓는 방법임 ⭐️
            ToolbarItem(placement: .principal) {
                Text("디톡스 설정")
                    .font(.breakUpFont(size: 17))
            }
        }
        .navigationBarBackButtonHidden(true)
    }
}

#Preview {
    DetoxSettingView()
}
