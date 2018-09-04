//
//  MeTooUser.swift
//  MeTooReportMap
//
//  Created by 查明轩 on 2018/9/3.
//  Copyright © 2018 metooreportmap. All rights reserved.
//

import Foundation
import LeanCloud

class MeTooUser {
	
	// var objectId: String
	
	init() {}
	
	static func signUpUserDefault(email: String, password: String) -> DataAccessResult {
		let signUpUser = LCUser()
		signUpUser.username = LCString(email)
		signUpUser.email = LCString(email)
		signUpUser.password = LCString(password)
		let result = signUpUser.signUp()
		if (result.isSuccess) {
			return DataAccessResult(result: true, message: "")
		} else {
			return DataAccessResult(result: false, message: result.error!.reason!)
		}
	}
}

