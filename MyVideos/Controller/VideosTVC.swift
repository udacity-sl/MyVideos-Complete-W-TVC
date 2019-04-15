//
//  VideosTableViewController.swift
//


import UIKit



class VideosTVC: UITableViewController {

    
    var videos: [Video] = Videos.fetchVideos()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        navigationController?.hidesBarsOnSwipe = true
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
        navigationController?.hidesBarsOnSwipe = false
    }
    
}

// MARK: - UITableViewDataSource

extension VideosTVC {
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return videos.count
        
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "VideoCell", for: indexPath) as! VideoTableViewCell
        
        let video = videos[indexPath.row]
        
        cell.video = video
        
        return cell
    }
}



// MARK: - UITableViewDelegate



