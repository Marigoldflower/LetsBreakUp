//
//  ProfileView.swift
//  LetsBreakUp
//
//  Created by 황홍필 on 3/20/24.
//

import SwiftUI

struct ProfileView: View {
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        NavigationStack {
            ZStack {
                Color.breakUpBackground
                    .ignoresSafeArea(.all)
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
                
                ToolbarItem(placement: .principal) {
                    Text("프로필")
                        .font(.breakUpFont(size: 17))
                }
            }
        }
        .navigationBarBackButtonHidden(true)
    }
}

#Preview {
    ProfileView()
}
