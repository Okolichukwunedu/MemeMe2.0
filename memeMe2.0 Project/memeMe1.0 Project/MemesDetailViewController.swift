//
//  MemesDetailViewController.swift
//  memeMe1.0 Project
//
//  Created by Okoli-Chinedu on 31/07/2022.
//  Copyright © 2022 Okoli-Chinedu. All rights reserved.
//

import Foundation
import UIKit

class MemesDetailViewController: UIViewController {
    
    @IBOutlet weak var memeImageView: UIImageView!
    
    var meme: memeMe!
    
    //MARK: Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
    
        self.memeImageView.image = meme.memedImage

        self.tabBarController?.tabBar.isHidden = true
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
    
        tabBarController?.tabBar.isHidden = false
    }
}
