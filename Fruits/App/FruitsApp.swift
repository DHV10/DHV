//
//  FruitsApp.swift
//  Fruits
//
//  Created by DHV on 29/05/2021.
//

import SwiftUI

@main
struct FruitsApp: App {
    @AppStorage("isOnboarding") var isOnboarding: Bool = true
    var body: some Scene {
        WindowGroup {
            if isOnboarding  {
                OnboardingView()
//                Content()
            }else{
//                OnboardingView()
                Content()
            }
        }
    }
}
