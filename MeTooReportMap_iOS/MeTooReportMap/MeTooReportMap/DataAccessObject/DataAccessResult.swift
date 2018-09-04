//
//  DataAccessResult.swift
//  MeTooReportMap
//
//  Created by 查明轩 on 2018/9/4.
//  Copyright © 2018 metooreportmap. All rights reserved.
//

import Foundation

class DataAccessResult {
	private var accessResult : Bool
	private var resultMessage : String
	init(result:Bool, message: String) {
		accessResult = result;
		resultMessage = message;
	}
	
	func getBoolResult() -> Bool {
		return accessResult;
	}
	
	func getMessage() -> String {
		return resultMessage;
	}
	
}
