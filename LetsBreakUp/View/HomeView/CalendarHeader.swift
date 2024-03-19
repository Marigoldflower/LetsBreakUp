//
//  CalendarHeader.swift
//  LetsBreakUp
//
//  Created by 황홍필 on 3/19/24.
//

import SwiftUI

struct CalendarHeader: View {
    var body: some View {
        HStack(spacing: 30) {
            Circle()
                .stroke(Color.black, lineWidth: 2)
                .background(Circle().fill(Color.white))
                .onTapGesture {
                    print("왼쪽이 눌림")
                }
                .overlay(
                    Image(systemName: "chevron.left")
                        .resizable()
                        .foregroundStyle(Color.breakUpBlack)
                        .frame(width: 13, height: 13)
                )
                .frame(width: 40, height: 40)
            
            Text("2024년 3월")
                .font(.breakUpFont(size: 20))
            
            Circle()
                .stroke(Color.black, lineWidth: 2)
                .background(Circle().fill(Color.white))
                .onTapGesture {
                    print("오른쪽이 눌림")
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
}

#Preview {
    CalendarHeader()
}
