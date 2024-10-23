//
//  AccessTokenRequest.swift
//
//
//  Created by Thomas Benninghaus on 11.12.23.
//

public struct AccessTokenRequest: Sendable, Codable {
    public let refreshToken: String
    
    public init(refreshToken: String) {
        self.refreshToken = refreshToken
    }
}
