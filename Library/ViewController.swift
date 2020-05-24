//
//  ViewController.swift
//  Library
//
//  Created by Ahn on 2020/05/23.
//  Copyright © 2020 ozofweird. All rights reserved.
//

import UIKit
import Alamofire
import AlamofireObjectMapper

class ViewController: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
                
        Alamofire.request("http://(IP or Domain)/test3.php", method: .get)
            .validate()
            .responseObject(completionHandler: {(response: DataResponse<FirstResponse>) in
                switch response.result {
                case .success(let dataResponse):
                    self.nameLabel.text = dataResponse.result.zero.name
                case .failure(let error):
                    print(error)
                }
        })
    }


}

