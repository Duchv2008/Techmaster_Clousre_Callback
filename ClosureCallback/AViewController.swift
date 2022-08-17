//
//  AViewController.swift
//  ClosureCallback
//
//  Created by Hà Văn Đức on 17/08/2022.
//

import UIKit

class AViewController: UIViewController {
    @IBOutlet weak var goToBBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    @IBAction func handleButtonAction(_ sender: Any) {
        /// Bật màn hình B
        /// 
        let storyboard = UIStoryboard.init(name: "Main", bundle: nil)
        guard let viewControllerB = storyboard.instantiateViewController(withIdentifier: "BViewController") as? BViewController else {
            return
        }
        
        viewControllerB.giaTriTruyenTuA = "Hello"
        viewControllerB.callbackToA = { response in
            print("Giá trị từ màn B là: \(response)")
        }
        
        present(viewControllerB, animated: true)
    }
}
