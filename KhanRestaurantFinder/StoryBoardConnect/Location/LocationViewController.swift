//
//  LocationViewController.swift
//  KhanRestaurantFinder
//
//  Created by Omer Khan on 3/5/19.
//  Copyright © 2019 Omer Khan. All rights reserved.
//

import UIKit

protocol LocationActions: class {
    func didTapAllow()
}

class LocationViewController: UIViewController {

    @IBOutlet weak var locationView: LocationView!
    weak var delegate: LocationActions?

    override func viewDidLoad() {
        super.viewDidLoad()

        locationView.didTapAllow = {
            self.delegate?.didTapAllow()
        }

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
