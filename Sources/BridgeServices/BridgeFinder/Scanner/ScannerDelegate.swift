//
//  ScannerDelegate.swift
//  HueSDK
//
//  Created by Nils Lattek on 24.04.16.
//  Copyright © 2016 Nils Lattek. All rights reserved.
//

import Foundation

protocol ScannerDelegate: class {
    func scanner(scanner: Scanner, didFinishWithResults ips: [String])
}