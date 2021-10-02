//
//  File.swift
//  
//
//  Created by Sergey Starukhin on 08.09.2021.
//

import Foundation
import RestService

public protocol SberAcquiringApi: RelativePathRestService where Presenter: SberPresentationLayer {
}

public extension SberAcquiringApi {
	var baseURL: URL { SberBaseURL.prod.rawValue }
}
