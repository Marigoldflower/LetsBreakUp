//
//  CalendarHeader.swift
//  LetsBreakUp
//
//  Created by 황홍필 on 3/19/24.
//

import SwiftUI

struct CalendarHeader: View {
    @Binding var selectedMonth: Int
    
    var body: some View {
        HStack(spacing: 30) {
            Circle()
                .stroke(Color.black, lineWidth: 2)
                .background(Circle().fill(Color.white))
                .onTapGesture {
                    self.selectedMonth -= 1
                }
                .overlay(
                    Image(systemName: "chevron.left")
                        .resizable()
                        .foregroundStyle(Color.breakUpBlack)
                        .frame(width: 13, height: 13)
                )
                .frame(width: 40, height: 40)
            
            Text("\(currentYearAndMonth())")
                .font(.breakUpFont(size: 20))
            
            Circle()
                .stroke(Color.black, lineWidth: 2)
                .background(Circle().fill(Color.white))
                .onTapGesture {
                    self.selectedMonth += 1
                }
                .overlay(
                    Image(systemName: "chevron.right")
                        .resizable()
                        .foregroundStyle(Color.breakUpBlack)
                        .frame(width: 13, height: 13)
                )
                .frame(width: 40, height: 40)
        }
        .padding(30)
    }
    
    private func currentYearAndMonth() -> String {
           let dateFormatter = DateFormatter()
           dateFormatter.dateFormat = "YYYY년 M월"
           let date = Calendar.current.date(byAdding: .month, value: selectedMonth, to: Date())!
           return dateFormatter.string(from: date)
       }
}

#Preview {
    CalendarHeader(selectedMonth: .constant(0))
}
