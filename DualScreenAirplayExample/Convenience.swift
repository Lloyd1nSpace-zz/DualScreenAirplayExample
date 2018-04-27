//
//  Convenience.swift
//  DualScreenAirplayExample
//
//  Created by Lloyd Sykes on 4/24/18.
//

import UIKit

extension UIView {
    var safeAreaLeadingAnchor: NSLayoutXAxisAnchor {
        if #available(iOS 11, *) {
            return safeAreaLayoutGuide.leadingAnchor
        }
        else {
            return leadingAnchor
        }
    }
    
    var safeAreaTrailingAnchor: NSLayoutXAxisAnchor {
        if #available(iOS 11, *) {
            return safeAreaLayoutGuide.trailingAnchor
        }
        else {
            return trailingAnchor
        }
    }
    
    var safeAreaTopAnchor: NSLayoutYAxisAnchor {
        if #available(iOS 11, *) {
            return safeAreaLayoutGuide.topAnchor
        }
        else {
            return topAnchor
        }
    }
    
    var safeAreaBottomAnchor: NSLayoutYAxisAnchor {
        if #available(iOS 11, *) {
            return safeAreaLayoutGuide.bottomAnchor
        }
        else {
            return bottomAnchor
        }
    }
}
