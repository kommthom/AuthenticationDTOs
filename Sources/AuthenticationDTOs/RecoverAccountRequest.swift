//
//  RecoverAccountRequest.swift
//
//
//  Created by Thomas Benninghaus on 11.12.23.
//

public struct RecoverAccountRequest: Sendable, Codable {
    public let password: String
    public let confirmPassword: String
    public let token: String
    
    public init(password: String, confirmPassword: String, token: String) {
        self.password = password
        self.confirmPassword = confirmPassword
        self.token = token
    }
}
