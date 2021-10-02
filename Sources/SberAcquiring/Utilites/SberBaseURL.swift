//
//  File.swift
//  
//
//  Created by Sergey Starukhin on 08.09.2021.
//

import Foundation
import RestService

public enum SberBaseURL: URL {
	case prod = "https://securepayments.sberbank.ru"
	case test = "https://3dsec.sberbank.ru"
}
