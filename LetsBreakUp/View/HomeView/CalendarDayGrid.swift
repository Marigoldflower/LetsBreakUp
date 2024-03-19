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
        LazyVGrid(columns: Array(repeating: GridItem(.flexible()), count: 7), content: {
            /*@START_MENU_TOKEN@*/Text("Placeholder")/*@END_MENU_TOKEN@*/
             
        })
    }
    
    private func fetchDates() -> [CalendarDate] {
        let calendar = Calendar.current
    }
    
    private func fetchSelectedMonth() -> Date {
        let calendar = Calendar.current
        
        guard let month = calendar.date(byAdding: .month, value: selectedMonth, to: Date()) else { return Date() }
        
        return month
    }
}

#Preview {
    CalendarDayGrid()
}
