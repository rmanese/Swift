//
//  UserVoteScreen.swift
//  PakarZapaterias
//
//  Created by Justin on 2/12/18.
//  Copyright © 2018 RedWhale. All rights reserved.
//

import UIKit

class UserVoteScreen: UIViewController {

    @IBOutlet weak var dislikeButton: UIButton!
    @IBOutlet weak var likeButton: UIButton!
    @IBOutlet weak var superLikeButton: UIButton!
    @IBOutlet weak var shoeImage: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // create rounded buttons and add border to superlike
        likeButton.layer.cornerRadius = likeButton.frame.width / 2
        dislikeButton.layer.cornerRadius = dislikeButton.frame.width / 2
        
        superLikeButton.layer.cornerRadius = superLikeButton.frame.width / 2
        superLikeButton.layer.borderWidth = 3
        superLikeButton.layer.borderColor = UIColor.lightGray.cgColor
        
        shoeImage.layer.borderWidth = 5
        shoeImage.layer.borderColor = UIColor.black.cgColor
    }

}
