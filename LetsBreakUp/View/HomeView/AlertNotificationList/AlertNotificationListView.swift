//
//  AlertNotificationListView.swift
//  LetsBreakUp
//
//  Created by 황홍필 on 3/20/24.
//

import SwiftUI

struct AlertNotificationListView: View {
    @Environment(\.dismiss) var dismiss
    
    var alertNotificationModelArray: [AlertNotificationModel] = []
    
    var body: some View {
        NavigationStack {
            ZStack {
                Color.breakUpBackground
                    .ignoresSafeArea(.all)
                
                if alertNotificationModelArray.isEmpty {
                    Text("아무것도 없습니다")
                } else {
                    List {
                        Text("안녕")
                            .listRowBackground(Color.breakUpBackground)
                        Text("안녕")
                        Text("안녕")
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
                    Text("알림")
                        .font(.breakUpFont(size: 17))
                }
            }
        }
        .navigationBarBackButtonHidden(true)
    }
}

#Preview {
    AlertNotificationListView()
}
