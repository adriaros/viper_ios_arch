//
//  StoryboardExtension.swift
//  VIPERarch
//
//  Created by Adria Ros Saez on 10/13/18.
//  Copyright © 2018 adria. All rights reserved.
//

import UIKit

//usage: let viewController: <ControllerName> = UIStoryboard(storyboard: Storyboard.Profile).instantiateViewController()
//Se instancia la clase directamente con 1 linea
//El viewController tiene que tener de ID el mismo nombre que la clase en el storyboard.


//Storyboard name
enum Storyboard : String {
    case EnvironmentSelector
    case LoginViewController
    
    func instantiateViewController<T>() -> T where T: StoryboardIdentifiable {
        let sb = UIStoryboard(storyboard: self)
        let optionalViewController = sb.instantiateViewController(withIdentifier: T.storyboardIdentifier)
        
        guard let viewController = optionalViewController as? T  else {
            fatalError("Couldn’t instantiate view controller with identifier \(T.storyboardIdentifier) ")
        }
        
        return viewController
    }
}

extension UIStoryboard {
    
    convenience init(storyboard: Storyboard, bundle: Bundle? = nil) {
        self.init(name: storyboard.rawValue, bundle: bundle)
    }
}

extension UIViewController : StoryboardIdentifiable {}

protocol StoryboardIdentifiable {
    static var storyboardIdentifier: String { get }
}

extension StoryboardIdentifiable where Self: UIViewController {
    
    static var storyboardIdentifier: String {
        return String(describing: self)
    }
    
}

