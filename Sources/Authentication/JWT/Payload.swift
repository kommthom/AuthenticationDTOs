//
//  Payload.swift
//
//
//  Created by Thomas Benninghaus on 11.12.23.
//

import JWT
import UserDTOs
import Foundation

public struct Payload: Sendable, Codable, JWTPayload {
    // User-releated stuff
	public var userID: UserDTO.UserId
    public var fullName: String
    public var email: String
    public var isAdmin: Bool
    public var imageURL: String?
    public var locale: LocaleDTO
    public var location: LocationDTO
    
    // JWT stuff
    public var exp: ExpirationClaim
    
	public func verify(using signer: JWTSigner) throws {
        try self.exp.verifyNotExpired()
    }
    
    public init(userID: UserDTO.UserId, fullName: String, email: String, isAdmin: Bool, imageURL: String? = nil, locale: LocaleDTO, location: LocationDTO, exp: ExpirationClaim) {
        self.userID = userID
        self.fullName = fullName
        self.email = email
        self.isAdmin = isAdmin
        self.imageURL = imageURL
        self.locale = locale
        self.location = location
        self.exp = exp
    }
}
