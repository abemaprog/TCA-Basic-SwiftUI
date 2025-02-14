//
//  TCA_BasicApp.swift
//  TCA-Basic
//
//  Created by Manato Abe on 2025/02/13.
//

import SwiftUI
import ComposableArchitecture

@main
struct TCA_BasicApp: App {
    var body: some Scene {
        WindowGroup {
            CounterView(
                store: Store(
                    initialState: CounterState(),
                    reducer: { counterReducer }
                )
            )
        }
    }
}
