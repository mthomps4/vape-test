//
//  Environments.swift
//
//
//  Created by Matthew Thompson on 3/11/24.
//

import Vapor

extension Environment {
    static var staging: Environment {
        .custom(name: "staging")
    }
}
