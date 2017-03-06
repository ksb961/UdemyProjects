//
//  MusicListVC.swift
//  SwappingScreens
//
//  Created by Kasidi Bellanger on 2017-03-06.
//  Copyright © 2017 Kasidi Bellanger. All rights reserved.
//

//comand option =    --- updates storyboard screen

import UIKit

class MusicListVC: UIViewController {

    @IBOutlet weak var BackBttn: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //viewDidLoad is for after the views are loaded in memory
        // it is only called one time
        
        view.backgroundColor = UIColor.blue

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func BackBttnFunc(_ sender: UIButton) {
        
        dismiss(animated: true, completion: nil)
        
    }
    

    @IBAction func Load3rdScreenPressed(_ sender: Any) {
        
        let SongTitle = "Info passed between Segues"
        
        performSegue(withIdentifier: "SongVCSegue", sender: SongTitle)
        
        
        
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if let destination = segue.destination as? SongVC{
            
            if let song = sender as? String{
                destination.selectedSong = "Info Passed"
            }
        }
    }
    

}
