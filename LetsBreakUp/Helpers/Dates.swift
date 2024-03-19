//
//  Dates.swift
//  LetsBreakUp
//
//  Created by 황홍필 on 3/19/24.
//

import Foundation

extension Date {
    func datesOfMonth() -> [Date] {
        let calendar = Calendar.current
        let currentMonth = calendar.component(.month, from: self)
        let currentYear = calendar.component(.year, from: self)
        
        var startDateComponents = DateComponents()
        startDateComponents.year = currentYear
        startDateComponents.month = currentMonth
        startDateComponents.day = 1
        guard let startDate = calendar.date(from: startDateComponents) else { return [] }
        
        var endDateComponents = DateComponents()
        endDateComponents.month = 1
        endDateComponents.day = -1
        guard let endDate = calendar.date(byAdding: endDateComponents, to: startDate) else { return [] }
        
        var dates: [Date] = []
        var currentDate = startDate
        
        while currentDate <= endDate {
            dates.append(currentDate)
            guard let currentDateData = calendar.date(byAdding: .day, value: 1, to: currentDate) else { return [] }
            
            currentDate = currentDateData
        }
        
        return dates
    }
}
