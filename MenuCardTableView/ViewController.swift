//
//  ViewController.swift
//  MenuCardTableView
//
//  Created by Apple on 06/01/23.
//

import UIKit

class ListViewController: UIViewController, UITableViewDelegate, UITableViewDataSource  {
    let foodItemOrderNumber = [ 1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
     let foodItemList = ["Pani Puri","Aloo Tikki", "Kathi Roll", "Pav Bhaji", "Vada Pav", "Chole Bhature", "Biryani", "Paratha","Palak Paneer", "Gulab Jamun"]
     let priceList = [20, 30, 40, 60, 20, 100, 150, 65, 190, 40]
     let foodItemImageList = ["panipuri","tikki", "roll", "pavbhaji", "vadapav", "bhature", "biryani", "paratha","palakpaneer", "gulabjamun"]

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return foodItemList.count
    }
   func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "foodItemList", for: indexPath)
        cell.textLabel?.text = foodItemList[indexPath.row]
        return cell
   }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
       let main = UIStoryboard(name: "Main", bundle: .none)
       let result = main.instantiateViewController(withIdentifier: "OutPutViewController")  as! OutPutViewController
       self.navigationController?.pushViewController(result, animated: true)
       let foodImage = foodItemImageList[indexPath.row]
       let foodprice = priceList[indexPath.row]
       let foodName = foodItemList[indexPath.row]
       result.foodPriceStr = foodprice
       result.foodImageStr = foodImage
       result.foodNameStr = foodName

}

}
