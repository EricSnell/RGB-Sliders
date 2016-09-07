//
//  ViewController.swift
//  RGBSliders
//
//  Created by Eric Snell on 9/7/16.
//  Copyright © 2016 Eric Snell. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var colorSquare: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // So the background isn't white on initial load, we call the updateBackgroundColor function
        
        updateBackgroundColor()
        
        colorSquare.layer.borderColor = UIColor.blackColor().CGColor
        colorSquare.layer.borderWidth = 1
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if (segue.identifier == "openColor") {
            // storing a reference to the second view controller in a variable
            let newViewController = segue.destinationViewController
            // the first view controller tells the second view controller to give its view the same background color as the color picker square
            newViewController.view.backgroundColor = colorSquare.backgroundColor
        }
    }

    @IBAction func updateBackgroundColor() {
        let red = CGFloat(redSlider.value)
        let green = CGFloat(greenSlider.value)
        let blue = CGFloat(blueSlider.value)
        
        colorSquare.backgroundColor = UIColor(red: red, green: green, blue: blue, alpha: 1)

        
    }

}
