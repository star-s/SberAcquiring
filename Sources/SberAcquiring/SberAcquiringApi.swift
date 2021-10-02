//
//  File.swift
//  
//
//  Created by Sergey Starukhin on 08.09.2021.
//

import Foundation
import RestService

public protocol SberAcquiringApi: RestService where Presenter: SberPresentationLayer {
	var service: SberService { get }
}

public extension SberAcquiringApi {
	var service: SberService { .prod }
	
	func makeURL(from path: Path) throws -> URL {
		guard let url = URL(string: String(describing: path), relativeTo: service.rawValue) else {
			throw URLError(.badURL)
		}
		return url
	}
}
