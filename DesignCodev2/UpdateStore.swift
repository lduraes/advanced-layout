//
//  UpdateStore.swift
//  DesignCodev2
//
//  Created by Luiz Durães on 28/04/2020.
//  Copyright © 2020 Luiz Durães. All rights reserved.
//

import SwiftUI
import Combine

class UpdateStore: ObservableObject {
    @Published var updates: [Update] = updateData
}
