//
//  File.swift
//  
//
//  Created by Sergey Starukhin on 08.09.2021.
//

import Foundation
import PassKit

public extension PKPayment {
	var sberPaymentToken: PaymentToken {
		PaymentToken(rawValue: token.paymentData.base64EncodedString())
	}
}
