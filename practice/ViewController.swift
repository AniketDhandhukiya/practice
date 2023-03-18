

import UIKit

class ViewController: UIViewController {

    @IBOutlet var progressView: UIProgressView!
    var time = Timer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
       progressView.progress = 0.0
        progress()
    }
        
        
        func progress(){
        var a = 0.0
        self.progressView.progress = Float(a)
        time = Timer.scheduledTimer(withTimeInterval: 0.05, repeats: true, block: { i in
            a += 0.01
            self.progressView.progress = Float(a)
        })
    }
}
    


