//
//  DetoxSettingView.swift
//  LetsBreakUp
//
//  Created by 황홍필 on 3/28/24.
//

import SwiftUI

struct DetoxSettingView: View {
    @Environment(\.dismiss) var dismiss
    
    @Binding var startTime: String
    @Binding var endTime: String
    
    @State private var startSelectedTime = Date()
    @State private var endSelectedTime = Date().addingTimeInterval(3600)
    
    var body: some View {
        NavigationStack {
            ZStack {
                Color.breakUpBackground
                    .ignoresSafeArea(.all)
                
                ScrollView(.vertical) {
                    VStack(spacing: 20) {
                        LifeQuotesView()
                        StoppingAppView()
                        TimeSettingView(startTime: $startSelectedTime, endtime: $endSelectedTime)
                        AlertNotificationView()
                        
                        // 약간의 여백을 주어 확인 버튼과 겹치지 않게 하기 위함 ⭐️
                        Rectangle()
                            .frame(height: 140)
                            .foregroundStyle(Color.breakUpBackground)
                    }
                }
                
                VStack {
                    Spacer()
                    
                    Button {
                        let dateFormatter = DateFormatter()
                        dateFormatter.dateFormat = "HH:mm"
                        
                        startTime = dateFormatter.string(from: startSelectedTime)
                        endTime = dateFormatter.string(from: endSelectedTime)
                        
                        dismiss()
                    } label: {
                        Text("확인")
                            .foregroundStyle(Color.breakUpBlack)
                            .font(.breakUpFont(size: 16))
                            .padding()
                            .frame(maxWidth: .infinity) // 버튼의 Text에까지 Width 값을 구현해주어야 비로소 버튼의 Width가 넓어질 수 있다.
                    }
                    .buttonStyle(.borderedProminent)
                    .tint(.breakUpMint)
                    .clipShape(RoundedRectangle(cornerRadius: 18))
                    .overlay(
                        RoundedRectangle(cornerRadius: 18)
                            .stroke(Color.breakUpBlack, lineWidth: 2)
                    )
                    .padding(.horizontal, 30)
                    .padding(.bottom, 20)
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
    DetoxSettingView(startTime: .constant(""), endTime: .constant(""))
}
