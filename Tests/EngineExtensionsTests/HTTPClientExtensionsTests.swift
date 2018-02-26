//
//  HTTPClientExtensionsTests.swift
//  EngineExtensions
//
//  Created by Gustavo Perdomo on 02/20/18.
//  Copyright © 2018 Vapor Community. All rights reserved.
//

import XCTest
@testable import EngineExtensions

// MARK: - Methods

final class HTTPClientExtensionsTests: XCTestCase {
    func testDummy() throws {
        XCTAssertEqual(true, true)
    }

    static let allTests = [
        ("testDummy", testDummy)
    ]
}

struct CustomError: Error {}
