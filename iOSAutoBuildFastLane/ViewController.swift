//
//  ViewController.swift
//  iOSAutoBuildFastLane
//
//  Created by Powen Hsueh on 13/12/2016.
//  Copyright © 2016 Bowen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var label: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.label.text = getLangCode()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    func getLangCode() -> String
    {
        //        var language = String()
        //bowen
        var language = "en-us"
        let languages = NSLocale.preferredLanguages[0]
        let locale: NSLocale = NSLocale(localeIdentifier: languages)
        
        language = locale.object(forKey: NSLocale.Key.identifier) as! String
        
        if language.lowercased() == "zh-hant-tw" || language.lowercased() == "zh" || language.lowercased() == "zh-hant-us" || language.lowercased() == "zh-us" {
            language = "zh-tw"
        }
        //        if language.lowercaseString != "zh-tw" && language.lowercaseString != "zh-cn" && language.lowercaseString != "en-us" {
        //
        //            if language.lowercaseString == "zh" || language.lowercaseString == "zh-hant-us" {
        //                language = "zh-tw"
        //            }
        //        }
        print("language : \(language)")
        
        
        //        let currentLanguage = NSUserDefaults.standardUserDefaults().objectForKey("AppleLanguages")?.objectAtIndex(0)
        //        if ((currentLanguage?.lowercaseString.rangeOfString("zh-tw")) != nil)
        //        {
        //            language = "zh-tw"
        //        }
        //        else if ((currentLanguage?.lowercaseString.rangeOfString("zh-hk")) != nil)
        //        {
        //            language = "zh-tw"
        //        }
        //        else if ((currentLanguage?.lowercaseString.rangeOfString("en")) != nil)
        //        {
        //            language = "en-us"
        //        }
        //        else
        //        {
        //            language = "en-us"
        //        }
        
        
        return language
    }


}

