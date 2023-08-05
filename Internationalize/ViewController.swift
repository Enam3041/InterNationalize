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
        lblLanguage.text = "Hello".localized(language: "ar")

    }
}

//MARK:- Extension for Localize your String
extension String {

    func localized(language:String, comment: String = "") -> String
    {
      guard let bundle = Bundle.main.path(forResource: language, ofType: "lproj") else {
        return NSLocalizedString(self, comment: comment)
      }

      let langBundle = Bundle(path: bundle)
      return NSLocalizedString(self, tableName: nil, bundle: langBundle!, comment: comment)
    }

    public func localizedString(comment: String? = nil) -> String {
         return NSLocalizedString(self, comment: comment ?? "")
     }
}

