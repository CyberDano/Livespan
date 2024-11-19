import UIKit

extension Float {
    func roundToDecimal(_ fractionDigits: Int) -> Double {
        let multiplier = pow(10, Double(fractionDigits))
        return Darwin.round(Double(self) * multiplier) / multiplier
    }
}

class ViewController: UIViewController {

    @IBOutlet weak var WorkSlider: UISlider!
    @IBOutlet weak var WorkHours: UITextView!
    @IBOutlet weak var SleepSlider: UISlider!
    @IBOutlet weak var SleepHours: UITextView!
    var work: Float = 0
    var sleep: Float = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func SaveWorkValue(_ sender: UISlider) {
        work = Float(sender.value.roundToDecimal(1))
        WorkHours.text = "\(work) hours"
    }
    
    @IBAction func SaveSleepValue(_ sender: UISlider) {
        sleep = Float(sender.value.roundToDecimal(1))
        SleepHours.text = "\(sleep) hours"
    }

    @IBAction func CalculateTime(_ sender: UIButton) {
        var correct: Bool = false
        if (work + sleep) > 24 {
            correct = false
        } else {
            correct = true
        }
        if correct {
            Calculate()
        }
    }
    
    func Calculate() {
        performSegue(withIdentifier: "CalculateTime", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        _ = segue.destination as! CalculatedTimeViewController
        //destination.name = nameTextField.text
    }
}

