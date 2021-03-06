//
//  AddTagCategoryViewController.swift
//  trigger
//
//  Created by Alexa Clingerman on 11/26/18.
//  Copyright © 2018 Alexa Clingerman. All rights reserved.
//

import Foundation
import UIKit

class AddTagCategoryViewController: UIViewController{
    //Actions
    
    @IBOutlet weak var txtFldName: UITextField!
    
    @IBAction func btnCancel(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func btnSave(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
        
        let catName = txtFldName.text
        
        TagCategory.createTagCategoryEntityFrom(TagCategoryName: catName!)
        
        }
    }

