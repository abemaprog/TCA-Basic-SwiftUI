//
//  FeatureName.swift
//  TCA-Basic
//
//  Created by Manato Abe on 2025/02/13.
//

import SwiftUI
import ComposableArchitecture

// State
struct CounterState: Equatable {
    var count = 0
}

// Action
enum CounterAction: Equatable {
    case increment
    case decrement
    case reset
}

let counterReducer = Reduce<CounterState, CounterAction> { state, action in
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
