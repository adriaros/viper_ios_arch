//
//  ViewExtension.swift
//  VIPERarch
//
//  Created by Adria Ros Saez on 10/15/18.
//  Copyright © 2018 adria. All rights reserved.
//

import UIKit

extension UIView {
    func roundCorners(){
        let h = self.bounds.size.height
        self.layer.cornerRadius = h / 2
        self.layer.masksToBounds = true
    }
}
