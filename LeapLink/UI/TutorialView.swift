//
//  TutorialView.swift
//  LeapLink
//
//  Created by Tomoya Hirano on 2020/03/20.
//  Copyright © 2020 Tomoya Hirano. All rights reserved.
//

import SwiftUI
import SwiftUIFlux
import SwiftUIExtensions

struct TutorialView: View {
    @EnvironmentObject var store: Store<AppState>
    
    var body: some View {
        VStack {
            Text("Leap Motionを接続してください")
            Button(action: {
                let url = URL(string: "https://developer.leapmotion.com/setup/desktop")!
                NSWorkspace.shared.open(url)
            }) {
                Text("ドライバをダウンロード")
            }
        }
    }
}
