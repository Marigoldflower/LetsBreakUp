//
//  StoppingAppViewModel.swift
//  LetsBreakUp
//
//  Created by 황홍필 on 3/30/24.
//

import Foundation
import FamilyControls
import DeviceActivity
import ManagedSettings
import SwiftUI

class StoppingAppViewModel: ObservableObject {
    @AppStorage("selection", store: UserDefaults(suiteName: Bundle.main.appGroupName)) var selection = FamilyActivitySelection()
    
    static let shared = StoppingAppViewModel()
    let store = ManagedSettingsStore()
    
    private init() {}
    
    var selectionToDiscourage = FamilyActivitySelection() {
        willSet {
            print ("got here \(newValue)")
            let applications = newValue.applicationTokens
            let categories = newValue.categoryTokens
            store.shield.applications = applications.isEmpty ? nil : applications
            store.shield.applicationCategories = ShieldSettings.ActivityCategoryPolicy.specific(categories, except: Set())
            store.shield.webDomainCategories = ShieldSettings.ActivityCategoryPolicy.specific(categories, except: Set())
            
        }
    }
}

extension FamilyActivitySelection: RawRepresentable {
    public init?(rawValue: String) {
        guard let data = rawValue.data(using: .utf8),
            let result = try? JSONDecoder().decode(FamilyActivitySelection.self, from: data)
        else {
            return nil
        }
        self = result
    }

    public var rawValue: String {
        guard let data = try? JSONEncoder().encode(self),
            let result = String(data: data, encoding: .utf8)
        else {
            return "[]"
        }
        return result
    }
}


