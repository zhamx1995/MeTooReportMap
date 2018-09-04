//
//  SignUpViewController.swift
//  MeTooReportMap
//
//  Created by 查明轩 on 2018/9/3.
//  Copyright © 2018 metooreportmap. All rights reserved.
//

import UIKit

class SignUpViewController: UIViewController {

	@IBOutlet weak var EmailTextField: UITextField!
	
	@IBOutlet weak var PasswordTextField: UITextField!
	
	@IBOutlet weak var PhoneNumberTextField: UITextField!
	
	override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

	@IBAction func SignUpSubmitButton(_ sender: Any) {
		let whitespaceSet = NSCharacterSet.whitespaces;
		let email = EmailTextField.text!.trimmingCharacters(in: whitespaceSet);
		let password = PasswordTextField.text!.trimmingCharacters(in: whitespaceSet)
		let MeTooUserIns = MeTooUser();
		let signUpResult = type(of: MeTooUserIns).signUpUserDefault(email: email, password: password);
		if (signUpResult.getBoolResult()) {
			// submit succeeded
		} else {
			// show error message
		}
		
	}
	
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
