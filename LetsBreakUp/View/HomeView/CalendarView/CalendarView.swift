//
//  CalendarView.swift
//  LetsBreakUp
//
//  Created by 황홍필 on 3/15/24.
//

import SwiftUI

struct CalendarView: View {
    @State private var selectedMonth: Int = 0
    
    var body: some View {
        VStack(spacing: 15) {
            CalendarHeader(selectedMonth: $selectedMonth)
            CalendarWeekDay()
            CalendarDayGrid(selectedMonth: $selectedMonth)
        }
    }
}

#Preview {
    CalendarView()
}
