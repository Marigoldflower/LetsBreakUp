//
//  Calendar.swift
//  LetsBreakUp
//
//  Created by 황홍필 on 3/19/24.
//

import SwiftUI

struct CalendarDayGrid: View {
    @Binding var selectedMonth: Int
    
    var body: some View {
        LazyVGrid(columns: Array(repeating: GridItem(.flexible()), count: 7), spacing: 20) {
            ForEach(Array(fetchDates().enumerated()), id: \.element.id) { index, value in
                ZStack {
                    if value.day != -1 {
                        Text("\(value.day)")
                            .font(.breakUpFont(size: 15))
                            .foregroundStyle(setColor(with: index))
                            .background(
                                Circle()
                                    .stroke(isToday(date: value.date) ? Color.black : Color.clear, lineWidth: 2)
                                    .background(isToday(date: value.date) ? Circle().fill(Color.breakUpViolet) : Circle().fill(Color.clear))
                                    .overlay(
                                        Text("\(value.day)")
                                            .font(.breakUpFont(size: 15))
                                    )
                                    .frame(width: 40, height: 40)
                                    
                                )
                    } else {
                        Text("")
                    }
                }
                .frame(width: 32, height: 32)
            }
        }
    }
    
    private func fetchDates() -> [CalendarDate] {
        let calendar = Calendar.current
        
        // 현재 주를 가져오기 위한 로직
                let today = Date()
                let weekInterval = calendar.dateInterval(of: .weekOfMonth, for: today)!
                
                let startOfWeek = weekInterval.start
                let endOfWeek = weekInterval.end
                
                var dates: [CalendarDate] = []
                
                var currentDate = startOfWeek
                while currentDate < endOfWeek {
                    let day = calendar.component(.day, from: currentDate)
                    dates.append(CalendarDate(day: day, date: currentDate))
                    currentDate = calendar.date(byAdding: .day, value: 1, to: currentDate)!
                }
                
                return dates
//        let currentMonth = fetchSelectedMonth()
//        
//        var dates = currentMonth.datesOfMonth().map { CalendarDate(day: calendar.component(.day, from: $0), date: $0)}
//        
//        let firstDayOfWeek = calendar.component(.weekday, from: dates.first?.date ?? Date())
//        
//        for _ in 0..<firstDayOfWeek - 1 {
//            dates.insert(CalendarDate(day: -1, date: Date()), at: 0)
//        }
//        
//        return dates
    }
    
    private func fetchSelectedMonth() -> Date {
        let calendar = Calendar.current
        
        guard let month = calendar.date(byAdding: .month, value: selectedMonth, to: Date()) else { return Date() }
        
        return month
    }
    
    private func setColor(with index: Int) -> Color {
        if index % 7 == 0 {
            return .breakUpRed
        } else if (index + 1) % 7 == 0 {
            return .breakUpRed
        } else {
            return .breakUpBlack
        }
    }
    
    private func isToday(date: Date) -> Bool {
        let calendar = Calendar.current
        return calendar.isDateInToday(date)
    }
}

#Preview {
    CalendarDayGrid(selectedMonth: .constant(0))
}
