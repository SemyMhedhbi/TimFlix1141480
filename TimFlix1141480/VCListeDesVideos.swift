//
//  VCListeDesVideos.swift
//  TimFlix1141480
//
//  Created by etudiant on 2015-10-08.
//  Copyright (c) 2015 etudiant. All rights reserved.
//

import UIKit

class VCListeDesVideos: UIViewController {

    var listeDesVideos:[Dictionary<String,String>] = []
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.à
        // Créer un tableau à partir d'un fichier de type 'plist'
        let pathFichierPlist = NSBundle.mainBundle().pathForResource("Listes des videos", ofType: "plist")!
        listeDesVideos = NSArray(contentsOfFile: pathFichierPlist) as! Array
        //println(listeDesVideos)
    
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return listeDesVideos.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var unVideo = UITableViewCell()
        
        unVideo.textLabel!.text = listeDesVideos[indexPath.row]["nom"]
        let fichierImage = listeDesVideos[indexPath.row]["pochette"]!
        unVideo.imageView!.image = UIImage(named:fichierImage)
        
        return unVideo
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
