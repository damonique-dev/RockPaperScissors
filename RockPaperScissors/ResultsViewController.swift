//
//  ResultsViewController.swift
//  RockPaperScissors
//
//  Created by Damonique Thomas on 6/11/16.
//  Copyright © 2016 Damonique Thomas. All rights reserved.
//

import UIKit

class ResultsViewController: UIViewController {

    var results:String!
    var resultsImage:UIImage!
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        label.text = results
        imageView.image = resultsImage
    }


}
