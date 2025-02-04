//
//  ContentView.swift
//  BetterRest
//
//  Created by Amid Mamedov on 01.02.2025.
//

import SwiftUI

struct ContentView: View {
    @State private var wakeUP = Date.now
    
    var body: some View {
        DatePicker("Please enter data", selection: $wakeUP, in: Date.now...)
            .labelsHidden()
    }
    private func exampleDates() {
        var components = DateComponents()
        components.hour = 8
        components.minute = 0
        let date = Calendar.current.date(from: components) ?? .now
    }
}

#Preview {
    ContentView()
}
