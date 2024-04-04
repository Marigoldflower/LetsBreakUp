//
//  LetsBreakUpApp.swift
//  LetsBreakUp
//
//  Created by 황홍필 on 3/6/24.
//

import SwiftUI
import FamilyControls

@main
struct LetsBreakUpApp: App {
    let center = AuthorizationCenter.shared
    
    var body: some Scene {
        WindowGroup {
            LetsBreakUp()
                .onAppear {
                    Task {
                        do {
                            if #available(iOS 16.0, *) {
                                // 앱이 실행되자마자 Screen Time API에 관한 권한 접근을 지정한다.
                                try await center.requestAuthorization(for: .individual)
                            }
                        } catch {
                            print("Failed authorization error: \(error.localizedDescription)")
                        }
                    }
                }
        }
    }
}
