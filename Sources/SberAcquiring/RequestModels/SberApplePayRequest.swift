//
//  File.swift
//  
//
//  Created by Sergey Starukhin on 08.09.2021.
//

import Foundation

public struct SberApplePayRequest: Encodable {
	/// Имя входа продавца в системе РБС.
	public var merchant: String
	
	/// Уникальный номер заказа на стороне продавца.
	public var orderNumber: String
	
	public var paymentToken: PaymentToken
	
	/// Язык в кодировке ISO 639-1. Если не указан, будет использован язык, указанный в настройках магазина как язык по умолчанию.
	public var language: String?
	
	/// Описание заказа.
	public var description: String?
	
	/// Дополнительные параметры заказа, которые сохраняются для просмотра из личного кабинета продавца.
	public var additionalParameters: [String:String]?
	
	public enum PreAuth: String, Encodable {
		case `true`
		case `false`
	}
	/// Параметр, определяющий необходимость предварительной авторизации (блокирования средств на счету клиента до их списания).
	public var preAuth: PreAuth?

	public init(merchant: String,
				orderNumber: String,
				paymentToken: PaymentToken,
				language: String? = nil,
				description: String? = nil,
				additionalParameters: [String : String]? = nil,
				preAuth: PreAuth? = nil) {
		self.merchant = merchant
		self.orderNumber = orderNumber
		self.paymentToken = paymentToken
		self.language = language
		self.description = description
		self.additionalParameters = additionalParameters
		self.preAuth = preAuth
	}
}
