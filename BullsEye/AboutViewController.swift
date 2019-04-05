//
//  AboutViewController.swift
//  BullsEye
//
//  Created by LeeYunSeok on 03/04/2019.
//  Copyright © 2019 LeeYunSeok. All rights reserved.
//

import UIKit
import WebKit

class AboutViewController: UIViewController {


    @IBOutlet weak var webView: WKWebView!
    
    @IBAction func close(_ sender: UIButton) {
        dismiss(animated:true, completion: nil)
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        if let url = Bundle.main.url(forResource: "BullsEye", withExtension: "html"){
            let requiest = URLRequest(url: url)
            webView.load(requiest)
        }
        // Do any additional setup after loading the view.
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
