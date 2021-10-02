//
//  File.swift
//  
//
//  Created by Sergey Starukhin on 08.09.2021.
//

import Foundation

public struct SberError: Error, Decodable {
	public let code: Int
	
	/// Подробное техническое объяснение ошибки - содержимое этого параметра не предназначено для отображения пользователю.
	public let description: String
	
	/// Понятное описание ошибки - предназначено для отображения пользователю.
	public let message: String

	public var localizedDescription: String { message }
}
