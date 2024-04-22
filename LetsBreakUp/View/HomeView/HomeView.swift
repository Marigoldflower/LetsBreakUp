//
//  HomeView.swift
//  LetsBreakUp
//
//  Created by 황홍필 on 3/13/24.
//

import SwiftUI

struct HomeView: View {
    
    private var currentMonth: String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "M"
        return dateFormatter.string(from: Date())
    }
    
    @State private var circleBorderColor: Color = Color.clear
    @State private var circleBackgroundColor: Color = Color.clear
    
    // HomeView에서 사용할 디톡스 시작시간과 종료시간
    @State var startDetoxTime = ""
    @State var endDetoxTime = ""
    
    var body: some View {
        // NavigationStack 전체를 HomeView가 관리하도록 하는 것이 좋음 ⭐️⭐️
        NavigationStack {
            // 화면의 배경색을 지정하고 싶으면 ZStack을 이용하면 된다.
            ZStack {
                Color.breakUpBackground
                    .ignoresSafeArea(.all)
                
                ScrollView(.vertical) {
                    VStack {
                        CalendarView()
                            .padding(15)
                        
                        VStack {
                            CountDownView(startDetoxTime: $startDetoxTime, endDetoxTime: $endDetoxTime)
                            DetoxListView()
                        }
                        HStack(spacing: 30) {
                            DetoxSettingButton(startTime: $startDetoxTime, endTime: $endDetoxTime)
                            DetoxCancelButton()
                        }
                    }
                }
                .scrollIndicators(.hidden)
            }
            .toolbar {
                // ToolbarItem으로 영역의 위치를 나눠줄 수 있다.
                ToolbarItem(placement: .topBarLeading) {
                    Text("홈 화면") // 원래 "홈 화면"
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
        .onAppear {
            startDetoxTime = updateStartDetoxTime()
            endDetoxTime = updateEndDetoxTime()
        }
    }
    
//    private func currentMonth() -> String {
//        let dateFormatter = DateFormatter()
//        dateFormatter.dateFormat = "M"
//        return dateFormatter.string(from: Date())
//    }
    
    private func updateStartDetoxTime() -> String {
        let now = Date()
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "HH:mm"
        let startDetoxTime = dateFormatter.string(from: now)
        
        return startDetoxTime
    }
    
    private func updateEndDetoxTime() -> String {
        let oneHourAfter = Date().addingTimeInterval(3600)
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "HH:mm"
        let endDetoxTime = dateFormatter.string(from: oneHourAfter)
        
        return endDetoxTime
    }
}

#Preview {
    HomeView()
}
