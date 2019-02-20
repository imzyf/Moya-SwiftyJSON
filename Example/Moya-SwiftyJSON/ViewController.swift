//
//  ViewController.swift
//  Moya-SwiftyJSON
//
//  Created by yifans on 02/16/2019.
//  Copyright (c) 2019 yifans. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        downloadRepositories("imzyf")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

extension ViewController {
    
    // MARK: - API Stuff
    func downloadRepositories(_ username: String) {
        gitHubProvider.request(.userRepositories(username)) { result in
            switch result {
            case .success(let response):
                let value = response.mapArray(Repository.self)
                print(value)
                
            case .failure(let error):
                print(error)
            }
        }
    }
}

