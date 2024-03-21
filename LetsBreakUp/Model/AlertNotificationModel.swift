//
//  AlertNotificationModel.swift
//  LetsBreakUp
//
//  Created by 황홍필 on 3/20/24.
//

import SwiftUI

struct AlertNotificationModel: Identifiable {
    var id = UUID()
    let alertImage: Image
    let description: String
    let alertReceivedTime: Date
}
