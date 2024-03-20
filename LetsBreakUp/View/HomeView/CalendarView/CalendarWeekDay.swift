//
//  CalendarWeekDay.swift
//  LetsBreakUp
//
//  Created by 황홍필 on 3/19/24.
//

import SwiftUI

struct CalendarWeekDay: View {
    let weekDays = ["일", "월", "화", "수", "목", "금", "토"]
    
    var body: some View {
        HStack {
            ForEach(weekDays, id: \.self) { day in
                if day == "토" {
                    Text(day)
                        .foregroundStyle(Color.breakUpMint)
                        .font(.breakUpFont(size: 18))
                        .frame(maxWidth: .infinity)
                } else if day == "일" {
                    Text(day)
                        .foregroundStyle(Color.breakUpRed)
                        .font(.breakUpFont(size: 18))
                        .frame(maxWidth: .infinity)
                } else {
                    Text(day)
                        .font(.breakUpFont(size: 18))
                        .frame(maxWidth: .infinity)
                }
            }
        }
    }
}

#Preview {
    CalendarWeekDay()
}
