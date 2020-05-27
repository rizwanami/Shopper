//
//  RegisterVC.swift
//  Shopper
//
//  Created by Rizwana on 5/26/20.
//  Copyright © 2020 makeurway.com. All rights reserved.
//

import UIKit
import FirebaseAuth

class RegisterVC: UIViewController {

    @IBOutlet weak var emailTxt: UITextField!
    @IBOutlet weak var usernameTxt: UITextField!
    @IBOutlet weak var passwordTxt: UITextField!
    @IBOutlet weak var confirmPassTxt: UITextField!
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
   
    @IBOutlet weak var passCheckImg: UIImageView!
    
    @IBOutlet weak var confirmPassCheckImg: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        passwordTxt.addTarget(self, action: #selector(textFieldDidChange(_:)), for: UIControl.Event.editingChanged)
        confirmPassTxt.addTarget(self, action: #selector(textFieldDidChange(_:)), for: UIControl.Event.editingChanged)
        
        
        // Do any additional setup after loading the view.
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
    //handle1 = //Auth.auth().addStateDidChangeListener { (auth, user) in
          // ...
        //}
    }
    @objc func textFieldDidChange(_ textField : UITextField) {
        guard let passtext = passwordTxt.text else {
            return }
        
        if textField == confirmPassTxt {
            passCheckImg.isHidden = false
            confirmPassCheckImg.isHidden = false
            
        } else {
            if passtext.isEmpty {
                passCheckImg.isHidden = true
                confirmPassCheckImg.isHidden = true
                confirmPassTxt.text = ""
            }
        }
        if passwordTxt.text == confirmPassTxt.text {
            passCheckImg.image = UIImage(named: AppImages.GreenCheck)
            confirmPassCheckImg.image = UIImage(named: AppImages.GreenCheck)
        } else {
            passCheckImg.image = UIImage(named:AppImages.RedCheck)
            confirmPassCheckImg.image = UIImage(named: AppImages.RedCheck)
        }
    }

    @IBAction func registerClick(_ sender: Any) {
        guard let email = emailTxt.text, email.isNotEmpty,
        let password = passwordTxt.text , password.isNotEmpty,
            let username = usernameTxt.text, username.isNotEmpty else {
                return
        }
            
        activityIndicator.startAnimating()
        Auth.auth().createUser(withEmail: email, password: password) { (user, error) in
            if error != nil {
                debugPrint(error)
                return
            }
            
            self.activityIndicator.stopAnimating()
        }
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
