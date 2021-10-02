//
//  File.swift
//  
//
//  Created by Sergey Starukhin on 08.09.2021.
//

import Foundation
import RestService

public protocol SberPresentationLayer: PresentationLayer {
}

public extension SberPresentationLayer {
	func decode<T: Decodable>(data: Data, decodingPath: [DecodingKey]?) throws -> T {
		let coder = JSONDecoder()
		coder.dateDecodingStrategy = .secondsSince1970
		coder.valueDecodingPath = decodingPath
		return try coder.decode(SberResponse<DecodingPathAdapter<T>>.self, from: data).response.payload
	}
}
