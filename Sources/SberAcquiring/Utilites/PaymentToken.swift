//
//  File.swift
//  
//
//  Created by Sergey Starukhin on 08.09.2021.
//

import Foundation

public struct PaymentToken: RawRepresentable, Hashable, Encodable {
	public let rawValue: String
	
	public init(rawValue: String) {
		self.rawValue = rawValue
	}
}
