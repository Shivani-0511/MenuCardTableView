//
//  OutPutViewController.swift
//  MenuCardTableView
//
//  Created by Apple on 06/01/23.
//

import UIKit

class OutPutViewController: UIViewController {

    @IBOutlet weak var priceUILabel: UILabel!
    @IBOutlet weak var imageUIImageView: UIImageView!
    var foodPriceStr = 0
    var foodImageStr = ""
    var foodNameStr = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
        override func viewWillAppear(_ animated: Bool)  {
            super.viewWillAppear(animated)
            priceUILabel.text = "\(foodNameStr) : \(foodPriceStr)"
            imageUIImageView.image = UIImage(named: foodImageStr)
     
        }
            

        // Do any additional setup after loading the view.
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
