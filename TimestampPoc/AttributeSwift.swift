//
//  AttributeSwift.swift
//  TimestampPoc
//
//  Created by Matheus Fernandes on 26/09/25.
//

import Foundation

@_cdecl("swift_constructor")
func swift_constructor() {
    Logger.shared.mark("__attribute__")
}

@_cdecl("c_constructor")
func c_constructor() {
    Logger.shared.mark("__c__")
}
