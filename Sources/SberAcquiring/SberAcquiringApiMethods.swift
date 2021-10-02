//
//  File.swift
//  
//
//  Created by Sergey Starukhin on 08.09.2021.
//

import Foundation
import RestService

public extension SberAcquiringApi where Path: ExpressibleByStringLiteral {
	func paymentApplepay(_ request: SberApplePayRequest, completion: @escaping (Result<SberPaymentResponse, Error>) -> Void) {
		post("payment/applepay/payment.do", parameters: request, decodingPath: nil, completion: completion)
	}
}
