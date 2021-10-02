//
//  File.swift
//  
//
//  Created by Sergey Starukhin on 08.09.2021.
//

import Foundation

public struct SberPaymentResponse: Decodable {
	public struct Order: Decodable {
		public let orderId: String
	}
	public let data: Order
}
