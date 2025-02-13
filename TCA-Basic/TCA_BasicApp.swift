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
                    reducer: {
                        Reduce { state, action in
                            switch action {
                            case .increment:
                                state.count += 1
                                return .none
                            case .decrement:
                                state.count -= 1
                                return .none
                            case .reset:
                                state.count = 0
                                return .none
                            }
                        }
                    }
                )
            )
        }
    }
}
