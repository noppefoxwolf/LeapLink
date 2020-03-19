//
//  ContentView.swift
//  LeapLink
//
//  Created by Tomoya Hirano on 2020/03/20.
//  Copyright © 2020 Tomoya Hirano. All rights reserved.
//

import SwiftUI
import SwiftUIFlux
import SwiftUIExtensions

struct ContentView: View {
    @EnvironmentObject var store: Store<AppState>
    
    var body: some View {
        currentView
    }
    
    var currentView: AnyView {
        if store.state.connectedLeapMotion == nil {
            return TutorialView().eraseToAnyView()
        } else {
            return Text("b").eraseToAnyView()
        }
    }
}

struct ControlView: View {
    var body: some View {
        VStack {
            HStack {
                Image("LeapMotion").resizable()
                    .aspectRatio(1.0, contentMode: .fit)
                    .frame(maxWidth: 64)
                
                VStack(alignment: .leading) {
                    Text("Leap Motion")
                        .font(.title)
                }
                Spacer()
            }
            .padding(.bottom, 10)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
