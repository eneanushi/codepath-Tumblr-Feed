//
//  DetailViewController.swift
//  ios101-project6-tumblr
//
//  Created by Enea Nushi on 10/21/23.
//

import UIKit
import Nuke

class DetailViewController: UIViewController {

    @IBOutlet weak var ImageView: UIImageView!
    
    
    @IBOutlet weak var textView: UITextView!
    
    var post: Post!
    
   
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
      
        
       textView.text = post.caption
        
        if let photo = post.photos.first {
                   // Get the URL of the first photo in the post
                   let url = photo.originalSize.url

                   // Use Nuke to load the image from the URL into the image view
                   Nuke.loadImage(with: url, into: ImageView)
               }
      
        
        navigationItem.largeTitleDisplayMode = .never
        
       

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
