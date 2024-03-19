//
//  Calendar.swift
//  LetsBreakUp
//
//  Created by 황홍필 on 3/19/24.
//

import SwiftUI

struct CalendarDayGrid: View {
    
    @State private var selectedMonth: Int = 0
    
    var body: some View {
        LazyVGrid(columns: Array(repeating: GridItem(.flexible()), count: 7), spacing: 20) {
            ForEach(Array(fetchDates().enumerated()), id: \.element.id) { index, value in
                ZStack {
                    if value.day != -1 {
                        Text("\(value.day)")
                            .font(.breakUpFont(size: 15))
                            .foregroundStyle(setColor(with: index))
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
        let currentMonth = fetchSelectedMonth()
        
        var dates = currentMonth.datesOfMonth().map { CalendarDate(day: calendar.component(.day, from: $0), date: $0)}
        
        let firstDayOfWeek = calendar.component(.weekday, from: dates.first?.date ?? Date())
        
        for _ in 0..<firstDayOfWeek - 1 {
            dates.insert(CalendarDate(day: -1, date: Date()), at: 0)
        }
        
        return dates
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
            return .breakUpMint
        } else {
            return .breakUpBlack
        }
    }
}

#Preview {
    CalendarDayGrid()
}
