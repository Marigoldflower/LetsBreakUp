//
//  CalendarView.swift
//  LetsBreakUp
//
//  Created by 황홍필 on 3/15/24.
//

import SwiftUI

struct CalendarView: View {    
    var body: some View {
        VStack {
            CalendarHeader()
            CalendarWeekDay()
        }
    }
}

#Preview {
    CalendarView()
}
