//
//  HomeView.swift
//  LetsBreakUp
//
//  Created by 황홍필 on 3/13/24.
//

import SwiftUI

struct HomeView: View {
    
    @State private var circleBorderColor: Color = Color.clear
    @State private var circleBackgroundColor: Color = Color.clear
    
    var body: some View {
        // NavigationStack 전체를 HomeView가 관리하도록 하는 것이 좋음 ⭐️⭐️
        NavigationStack {
            // 화면의 배경색을 지정하고 싶으면 ZStack을 이용하면 된다.
            ZStack {
                Color.breakUpBackground
                    .ignoresSafeArea(.all)
                
                ScrollView(.vertical) {
                    VStack(spacing: 20) {
                        CalendarView()
                        VStack {
                            CountDownView()
                            DetoxListView()
                        }
                        HStack(spacing: 30) {
                            DetoxSettingButton()
                            DetoxCancelButton()
                        }
                    }
                }
                .scrollIndicators(.hidden)
            }
            .toolbar {
                // ToolbarItem으로 영역의 위치를 나눠줄 수 있다.
                ToolbarItem(placement: .topBarLeading) {
                    Text("디톡스 설정")
                        .font(.breakUpFont(size: 20))
                }
                
                ToolbarItem(placement: .topBarTrailing) {
                    HStack {
                        NavigationLink(destination: AlertNotificationListView()) {
                            Image(systemName: "bell")
                        }
                        
                        NavigationLink(destination: ProfileView()) {
                            Image(systemName: "person.circle.fill")
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 24, height: 24)
                                .clipShape(Circle())
                                .overlay(Circle().stroke(Color.breakUpBlack, lineWidth: 1.5))
                                .foregroundStyle(Color.breakUpGray)
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    HomeView()
}
