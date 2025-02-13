//
//  ContentView.swift
//  TCA-Basic
//
//  Created by Manato Abe on 2025/02/13.
//

import SwiftUI
import ComposableArchitecture

struct CounterView: View {
    
    let store: Store<CounterState, CounterAction>
    
    var body: some View {
        WithViewStore(self.store, observe: { $0 }) { viewStore in
            VStack(spacing: 20) {
                Text("Count: \(viewStore.count)")
                    .font(.largeTitle)
                VStack {
                    HStack {
                        Button("➖") { viewStore.send(.decrement) }
                        Button("Reset") { viewStore.send(.reset) }
                        Button("➕") { viewStore.send(.increment) }
                    }
                    .font(.title)
                }
                
            }
            .padding()
        }
    }
}


