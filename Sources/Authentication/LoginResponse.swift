//
//  LoginResponse.swift
//
//
//  Created by Thomas Benninghaus on 11.12.23.
//

import UserDTOs

public struct LoginResponse: Sendable, Codable {
    public let user: UserDTO
    public let accessToken: String
    public let refreshToken: String
    
    public init(user: UserDTO, accessToken: String, refreshToken: String) {
        self.user = user
        self.accessToken = accessToken
        self.refreshToken = refreshToken
    }
}
