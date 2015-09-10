//
//  VoiceTableViewController.swift
//  DuDu
//
//  Created by Kyle on 15/9/3.
//  Copyright © 2015年 kyle. All rights reserved.
//

import UIKit
import AVFoundation

class VoiceTableViewController: UITableViewController ,UISearchBarDelegate{
    let data:Array<String> = ["博美","藏獒","喘气","大狼狗","狗宝宝","狗被打","狗的咆哮","狗嚎叫","狗哼哼","狗狂叫不停","狗怒","狗嗅","海狗","警犬","母狗","圣伯纳德犬","狮子狗","泰迪狗","小狗叫","凶狠的狗","凶猛","骞煎唇","鬣狗"]

    var imgData:Array<String> = []
    var path:String?
    
    @IBOutlet weak var searchBar: UISearchBar!
    var player:AVAudioPlayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tableView.backgroundColor = UIColor.whiteColor()

        for(var i=0;i<data.count;i++){
            path = NSBundle.mainBundle().pathForResource(data[i], ofType: "jpg")
            if(path==nil){
                imgData.append("吉娃娃.jpg")
            }else{
                imgData.append(data[i]+".jpg")
            }
        }
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return data.count
    }


    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("voiceCell", forIndexPath: indexPath) as! VoiceTableViewCell

        cell.voiceImage.image = UIImage(named: imgData[indexPath.row])
        
        
        cell.voiceTitle.text = data[indexPath.row]
        
        
        return cell
    }


    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        do{
            try player = AVAudioPlayer(contentsOfURL: NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource(data[indexPath.row], ofType: "mp3")!))
            print(data[indexPath.row])
            player.play()
        }catch{
            
        }
        
    }
    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            // Delete the row from the data source
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return NO if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

    
    func searchBarSearchButtonClicked(searchBar: UISearchBar) {
        
    }
    
}
