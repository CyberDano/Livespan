import UIKit

extension Float {
    func roundToDecimal(_ fractionDigits: Int) -> Double {
        let multiplier = pow(10, Double(fractionDigits))
        return Darwin.round(Double(self) * multiplier) / multiplier
    }
}

class ViewController: UIViewController {

    let data = UserDefaults.standard
    @IBOutlet weak var AgeSlider: UISlider!
    @IBOutlet weak var YearsOld: UITextView!
    @IBOutlet weak var WorkSlider: UISlider!
    @IBOutlet weak var WorkHours: UITextView!
    @IBOutlet weak var SleepSlider: UISlider!
    @IBOutlet weak var SleepHours: UITextView!
    @IBOutlet weak var CalcButton: UIButton!
    var age: Float = 0
    var work: Float = 0
    var sleep: Float = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        data.set(0, forKey: "age")
        data.set(0, forKey: "work")
        data.set(0, forKey: "sleep")
    }

    @IBAction func SaveAgealue(_ sender: UISlider) {
        age = Float(sender.value.roundToDecimal(1))
        YearsOld.text = "\(age) years"
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
        if (work + sleep) > 24 {
        } else if (work + sleep) != 0 {
            Calculate()
        }
    }
    
    func Calculate() {
        data.set(age, forKey: "age")
        data.set(work, forKey: "work")
        data.set(sleep, forKey: "sleep")
    }
}
