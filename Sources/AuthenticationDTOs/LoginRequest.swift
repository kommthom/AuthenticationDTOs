//
//  LoginRequest.swift
//
//
//  Created by Thomas Benninghaus on 11.12.23.
//

public struct LoginRequest: Sendable, Codable {
    public let email: String
    public let password: String
    
    public init(email: String, password: String) {
        self.email = email
        self.password = password
    }
}
