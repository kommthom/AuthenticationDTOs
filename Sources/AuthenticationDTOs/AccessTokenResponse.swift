//
//  AccessTokenResponse.swift
//
//
//  Created by Thomas Benninghaus on 11.12.23.
//

public struct AccessTokenResponse: Sendable, Codable {
    public let refreshToken: String
    public let accessToken: String
    
    public init(refreshToken: String, accessToken: String) {
        self.refreshToken = refreshToken
        self.accessToken = accessToken
    }
}
