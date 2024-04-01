//
//  CountDownView.swift
//  LetsBreakUp
//
//  Created by 황홍필 on 3/26/24.
//

import SwiftUI

struct CountDownView: View {
    @Binding var startDetoxTime: String
    @Binding var endDetoxTime: String
    
    var body: some View {
        RoundedRectangle(cornerRadius: 18)
            .fill(Color.breakUpYellow)
            .stroke(Color.breakUpBlack, lineWidth: 2)
            .frame(height: 260)
            .padding()
            .overlay {
                RoundedRectangle(cornerRadius: 18)
                    .fill(Color.breakUpBackground)
                    .stroke(Color.breakUpBlack, lineWidth: 2)
                    .frame(height: 240)// 높이 110
                    .padding(30)
                    .overlay {
                        VStack(spacing: 30) {
                            
                            VStack(spacing: 10) {
                                HStack {
                                    Text("디톡스 시작 시간 -")
                                        .font(.breakUpFont(size: 20))
                                        .foregroundStyle(Color.breakUpBlack)
                                    Text(startDetoxTime)
                                        .font(.breakUpFont(size: 23))
                                        .foregroundStyle(Color.breakUpOrange)
                                }
                                
                                HStack {
                                    Text("디톡스 종료 시간 -")
                                        .font(.breakUpFont(size: 20))
                                        .foregroundStyle(Color.breakUpBlack)
                                    Text(endDetoxTime)
                                        .font(.breakUpFont(size: 23))
                                        .foregroundStyle(Color.breakUpOrange)
                                }
                            }
                            
                            VStack(spacing: 15) {
                                Text("종료시간까지")
                                    .font(.breakUpFont(size: 30))
                                    .foregroundStyle(Color.breakUpBlack)
                                Text("\(calculateTimeRemaining())")
                                    .font(.breakUpFont(size: 30))
                                    .foregroundStyle(Color.breakUpRed)
                            }
                        }
                    }
            }
    }
    
    func calculateTimeRemaining() -> String {
        let formatter = DateFormatter()
        formatter.dateFormat = "HH:mm"
        
        guard let startDate = formatter.date(from: startDetoxTime) else { return "" }
        guard let endDate = formatter.date(from: endDetoxTime) else { return "" }
        
        let calendar = Calendar.current
        let components = calendar.dateComponents([.hour, .minute], from: startDate, to: endDate)
        
        guard let hour = components.hour else { return "" }
        guard let minute = components.minute else { return "" }
        
        // 결과를 "HH:mm:ss" 형식으로 변환합니다. 이 경우 초(second)는 항상 "00"으로 표시됩니다.
        let resultString = String(format: "%02d:%02d:00", hour, minute)
        
        return resultString
    }
}

#Preview {
    CountDownView(startDetoxTime: .constant(""), endDetoxTime: .constant(""))
}
