//
//  CompleteNavigationSwiftUIApp.swift
//  CompleteNavigationSwiftUI
//
//  Created by Moussa on 25/6/2023.
//

import SwiftUI

@main
struct CompleteNavigationSwiftUIApp: App {
    var body: some Scene {
        WindowGroup {
            DrinkyView()
                .environmentObject(DrinkyFlow.shared)
        }
    }
}
