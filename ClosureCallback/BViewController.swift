//
//  BViewController.swift
//  ClosureCallback
//
//  Created by Hà Văn Đức on 17/08/2022.
//

import UIKit

class BViewController: UIViewController {
    var giaTriTruyenTuA: String?
    var callbackToA: ((String) -> Void)?

    override func viewDidLoad() {
        super.viewDidLoad()
        print("giaTriTruyenTuA \(giaTriTruyenTuA)")
    }
    
    @IBAction func handleButtonAction(_ sender: Any) {
        self.callbackToA?("Data back to A")
        self.dismiss(animated: true)
    }
}
