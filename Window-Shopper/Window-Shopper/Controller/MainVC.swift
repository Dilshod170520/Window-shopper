//
//  ViewController.swift
//  Window-Shopper
//
//  Created by MacBook Pro on 02/09/23.
//

import UIKit

class MainVC: UIViewController {
    @IBOutlet weak var wageTXT: CurencyTextField!
    @IBOutlet weak var priceTXT: CurencyTextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
      setupCalculateBtn()
    }
    
    private func  setupCalculateBtn() {
        let calBtn = UIButton(frame: CGRect(x: 0,
                                            y: 0,
                                            width: view.frame.size.width,
                                            height: 60))
        calBtn.backgroundColor = .systemOrange
        calBtn.setTitle("Calculate", for: .normal)
        calBtn.setTitleColor(.white, for: .normal)
        
        calBtn.addTarget(self,
                         action: #selector(MainVC.calculate),
                         for: .touchUpInside)
        
        wageTXT.inputAccessoryView = calBtn
        priceTXT.inputAccessoryView  = calBtn
    }
    
    @objc func calculate () {
        print("we got here")
    }

}

