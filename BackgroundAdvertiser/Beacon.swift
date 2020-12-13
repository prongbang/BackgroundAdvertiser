//
//  Beacon.swift
//  BackgroundAdvertiser
//
//  Created by Endtry on 12/12/2563 BE.
//  Copyright © 2563 BE davidgyoungtech. All rights reserved.
//

import Foundation
import CoreBluetooth
import CoreLocation

struct Beacon {
    var uuid: String = ""
    var major: CLBeaconMajorValue = 0
    var minor: CLBeaconMajorValue = 0
    var identifier: String = ""
}
