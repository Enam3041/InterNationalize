//
//  ViewController.swift
//  Internationalize
//
//  Created by Enam on 9/3/20.
//  Copyright © 2020 Enam. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var lblLanguage: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        lblLanguage.text = "Hello".localized(language: "hi")
    }
}

//MARK:- Extension for Localize your String
extension String {
    func localized(language:String) -> String
    {
        //forResource here you have to add your language code
        let path = Bundle.main.path(forResource: language, ofType: "lproj")
        let bundle = Bundle(path: path!)
        return NSLocalizedString(self, tableName: nil, bundle: bundle!, value: "", comment: "")
    }
}

