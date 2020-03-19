//
//  Store.swift
//  LeapLink
//
//  Created by Tomoya Hirano on 2020/03/20.
//  Copyright © 2020 Tomoya Hirano. All rights reserved.
//

import SwiftUIFlux

let store = Store<AppState>(reducer: appStateReducer,
                            middleware: [],
                            state: AppState())
