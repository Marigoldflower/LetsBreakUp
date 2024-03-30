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
    static let shared = StoppingAppViewModel()
    let store = ManagedSettingsStore()
    var selection = FamilyActivitySelection()
    
    private init() {}
    
    var selectionToDiscourage = FamilyActivitySelection() {
        willSet {
            print ("got here \(newValue)")
            let applications = newValue.applicationTokens
            let categories = newValue.categoryTokens
            //let webCategories = newValue.webDomainTokens
            store.shield.applications = applications.isEmpty ? nil : applications
            store.shield.applicationCategories = ShieldSettings.ActivityCategoryPolicy.specific(categories, except: Set())
            store.shield.webDomainCategories = ShieldSettings.ActivityCategoryPolicy.specific(categories, except: Set())
            
        }
    }
}


