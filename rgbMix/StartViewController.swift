//
//  StartViewController.swift
//  rgbMix
//
//  Created by Игорь Шевырёв on 26.12.2021.
//

import UIKit

class StartViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

      
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let editVC = segue.destination as?
        EditViewController else { return }
        editVC.rgbView.backgroundColor = view.backgroundColor
        editVC.delegate = self
    }

}

protocol StartViewControllerDelegate: AnyObject {
    
    var colorFromEditView: UIColor  { get }
    
    func updateColor(_ color: UIColor)
}
