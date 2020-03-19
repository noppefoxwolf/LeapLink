//
//  ContentView.swift
//  LeapLink
//
//  Created by Tomoya Hirano on 2020/03/20.
//  Copyright © 2020 Tomoya Hirano. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    let leapService = LeapService()
    
    var body: some View {
        Text("Hello, World!")
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .onAppear {
                self.leapService.delegate = self
                self.leapService.run()
        }
    }
}

extension ContentView: LeapServiceDelegate {
    func willUpdateData() {
        
    }
    
    func didStopUpdatingData() {
        
    }
    
    func didUpdate(handRepresentation: LeapHandRepresentation) {
        print(handRepresentation)
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
