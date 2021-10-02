//
//  File.swift
//  
//
//  Created by Sergey Starukhin on 08.09.2021.
//

import Foundation

public struct SberError: Error {
	public let code: Int
	
	/// Подробное техническое объяснение ошибки - содержимое этого параметра не предназначено для отображения пользователю.
	public let description: String
	
	/// Понятное описание ошибки - предназначено для отображения пользователю.
	public let message: String

	public var localizedDescription: String { message }
}

extension SberError: Decodable {
	
	private enum CodingKeys: String, CodingKey {
		case code
		case message
		case description
	}
	
	public init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy: CodingKeys.self)
		message = try container.decode(String.self, forKey: .message)
		description = try container.decode(String.self, forKey: .description)
		if let value = try? container.decode(Int.self, forKey: .code) {
			code = value
		} else if let value = try Int(container.decode(String.self, forKey: .code)) {
			code = value
		} else {
			throw DecodingError.dataCorruptedError(forKey: .code, in: container, debugDescription: "")
		}
	}
}
