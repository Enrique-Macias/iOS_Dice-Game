//
//  ViewController.swift
//  Dados
//
//  Created by Enrique Macias on 2/4/23.
//

import UIKit

class InformationViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        view.layer.cornerRadius = 10
        view.clipsToBounds = true
    }
}

class ViewController: UIViewController {
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
     
        
        diceImageView1.image = UIImage(named: "dice1")
        diceImageView2.image = UIImage(named: "dice1")
        
    }
   
    @IBAction func addButton(_ sender: Any) {
        let informationVC = InformationViewController()
        informationVC.modalPresentationStyle = .overCurrentContext
        present(informationVC, animated: true, completion: nil)
    }
    @IBAction func buttonPressed(_ sender: Any) {
        let alert = UIAlertController(title: "Information", message: "This is the information displayed.", preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default, handler: nil)
        alert.addAction(okAction)
        present(alert, animated: true, completion: nil)
    }
    @IBAction func rollButtonPressed(_ sender: UIButton) {
        let diceArray = [UIImage(named: "dice1"), UIImage(named: "dice2"), UIImage(named: "dice3"), UIImage(named: "dice4"), UIImage(named: "dice5"), UIImage(named: "dice6")]
        diceImageView1.image = diceArray[Int.random(in: 0...5)]
        diceImageView2.image = diceArray[Int.random(in: 0...5)]
    }
}

