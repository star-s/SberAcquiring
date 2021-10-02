//
//  File.swift
//  
//
//  Created by Sergey Starukhin on 08.09.2021.
//

import Foundation

public struct SberResponse<T> {
	public let response: T
}

extension SberResponse: Decodable where T: Decodable {
	private enum Keys: String, CodingKey {
		case success
	}
	
	public init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy: Keys.self)
		guard try container.decode(Bool.self, forKey: .success) else {
			throw try SberError(from: decoder)
		}
		response = try T.init(from: decoder)
	}
}
