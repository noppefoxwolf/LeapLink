//
//  State.swift
//  LeapLink
//
//  Created by Tomoya Hirano on 2020/03/20.
//  Copyright © 2020 Tomoya Hirano. All rights reserved.
//

import SwiftUIFlux

struct AppState: FluxState {
    var connectedLeapMotion: LeapMotionState?
}

struct LeapMotionState: FluxState, Codable {
    
}
