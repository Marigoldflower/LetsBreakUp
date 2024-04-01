//
//  TimeSettingView.swift
//  LetsBreakUp
//
//  Created by 황홍필 on 3/30/24.
//

import SwiftUI

struct TimeSettingView: View {
    @State private var startSelectedTime = Date()
    @State private var endSelectedTime = Date().addingTimeInterval(3600)
    
    var body: some View {
        VStack {
            HStack {
                Text("디톡스 시작 시간")
                    .font(.breakUpFont(size: 15))
                    .foregroundStyle(Color.breakUpBlack)
                    .padding(.leading, 20)
                
                Spacer()
                
                DatePicker("시간 선택", selection: $startSelectedTime, displayedComponents: .hourAndMinute)
                    .labelsHidden()
                    .padding(.trailing, 20)
            }
            
            HStack {
                Text("디톡스 종료 시간")
                    .font(.breakUpFont(size: 15))
                    .foregroundStyle(Color.breakUpBlack)
                    .padding(.leading, 20)
                
                Spacer()
                
                DatePicker("시간 선택", selection: $endSelectedTime, displayedComponents: .hourAndMinute)
                    .labelsHidden()
                    .padding(.trailing, 20)
            }
        }
    }
}

#Preview {
    TimeSettingView()
}
