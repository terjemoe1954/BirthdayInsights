//
//  StartApp.swift
//  Birthday Insights
//  Created by Terje Moe on 07/01/2024.

import SwiftUI

@main
struct BirthdayInsightsApp: App {
    @AppStorage("appearanceSelection") private var appearanceSelectionRaw: String = AppearanceSelection.system.rawValue

    var body: some Scene {
        WindowGroup {
            MainView()
                .preferredColorScheme(AppearanceSelection(rawValue: appearanceSelectionRaw)?.colorScheme)
        }
    }
}
