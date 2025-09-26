//
//  Logger.swift
//  TimestampPoc
//
//  Created by Matheus Fernandes on 26/09/25.
//

import Foundation

@objc final class Logger: NSObject {
    @objc static let shared = Logger()
    
    private override init() {
        super.init()
    }
    
    private var events: [(name: String, time: TimeInterval, delta: TimeInterval?)] = []
    private var lastTime: TimeInterval?
    
    @objc func mark(_ name: String) {
        let now = CFAbsoluteTimeGetCurrent()
        let delta = lastTime.map { now - $0 }
        events.append((name, now, delta))
        lastTime = now
        print("[PERFORMANCE] \(name) at \(now) (\(delta.map { "+\($0)" } ?? "first"))")
    }
    
    func report() {
        print("====== PERFORMANCE REPORT ======")
        for e in events {
            if let d = e.delta {
                print("\(e.name): +\(String(format: "%.3f", d))s")
            } else {
                print("\(e.name): \(e.time)")
            }
        }
        print("=================================")
    }
}
