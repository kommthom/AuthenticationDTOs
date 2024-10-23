//
//  ResetPasswordRequest.swift
//
//
//  Created by Thomas Benninghaus on 11.12.23.
//

public struct ResetPasswordRequest: Sendable, Codable {
    public let email: String
    
    public init(email: String) {
        self.email = email
    }
}
