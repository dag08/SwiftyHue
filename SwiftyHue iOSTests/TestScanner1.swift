//
//  TestScanner1.swift
//  SwiftyHue
//
//  Created by Nils Lattek on 28.05.16.
//
//

import Foundation
@testable import SwiftyHue

class TestScanner1: NSObject, Scanner {
    weak var delegate: ScannerDelegate?
    static var results = [String]()
    static var calledAt: NSDate?

    required init(delegate: ScannerDelegate? = nil) {
        self.delegate = delegate
        super.init()
    }

    func start() {
        TestScanner1.calledAt = NSDate()
        delegate?.scanner(self, didFinishWithResults: TestScanner1.results)
    }

    func stop() {
        
    }
}