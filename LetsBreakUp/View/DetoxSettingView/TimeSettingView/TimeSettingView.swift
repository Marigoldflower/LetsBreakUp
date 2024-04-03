//
//  TimeSettingView.swift
//  LetsBreakUp
//
//  Created by 황홍필 on 3/30/24.
//

import SwiftUI

struct TimeSettingView: View {
    @Binding var startTime: Date
    @Binding var endtime: Date
    
    var body: some View {
        VStack {
            HStack {
                Text("디톡스 시작 시간")
                    .font(.breakUpFont(size: 15))
                    .foregroundStyle(Color.breakUpBlack)
                    .padding(.leading, 20)
                
                Spacer()
                
                DatePicker("시간 선택", selection: $startTime, displayedComponents: .hourAndMinute)
                    .labelsHidden()
                    .padding(.trailing, 20)
            }
            
            HStack {
                Text("디톡스 종료 시간")
                    .font(.breakUpFont(size: 15))
                    .foregroundStyle(Color.breakUpBlack)
                    .padding(.leading, 20)
                
                Spacer()
                
                DatePicker("시간 선택", selection: $endtime, displayedComponents: .hourAndMinute)
                    .labelsHidden()
                    .padding(.trailing, 20)
            }
        }
    }
}

#Preview {
    TimeSettingView(startTime: .constant(Date.now), endtime: .constant(Date.now))
}
