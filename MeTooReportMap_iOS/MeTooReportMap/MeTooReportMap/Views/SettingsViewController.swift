//
//  SettingsViewController.swift
//  MeTooReportMap
//
//  Created by 查明轩 on 2018/9/2.
//  Copyright © 2018 metooreportmap. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view, typically from a nib.
	}
	
	@IBAction func mSignUpButton(_ sender: Any) {
		self.performSegue(withIdentifier: "OpenSignUpViewSegue", sender: self)
	}
	
	override func prepare(for segue:UIStoryboardSegue,sender:Any?){
		if segue.identifier == "OpenSignUpViewSegue"{
			let signUpViewController = segue.destination as! SignUpViewController
		}
	}
	
	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}


}

