import UIKit

class CalculatedTimeViewController: UIViewController {
    let data = UserDefaults.standard
    let averageAge: Int = 150672 // esperanza de vida promedio a partir de 65 años en horas
    @IBOutlet weak var CalculatedTime: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()
        print("Llega a la segunda pantalla")
        print(data.float(forKey: "age"))
        print(data.float(forKey: "work"))
        print(data.float(forKey: "sleep"))
        let time = StimateHours()
        if time > 0 {
            CalculatedTime.text += "\(time) hours (\(Float(time/24).roundToDecimal(1)) days) left of free time to enjoy :)"
        } else {
            CalculatedTime.text += "all the time you want to enjoy :)"
        }
    }
    
    func StimateHours() -> Float {
        var agetime: Float = (data.float(forKey: "age") * 365) * 24 //tu edad en horas
        var worktime: Float = (24/data.float(forKey: "work")) // tiempo del día de trabajo
        var sleeptime: Float = (24/data.float(forKey: "sleep")) // tiempo del día de sueño
        let retirement: Float = (65 * 365) * 24 // 65 años en horas
        if (retirement - agetime) > 0 {
            // Si no estás jubilado
            if agetime < retirement {
                agetime = (retirement - agetime)
                agetime = agetime - (agetime / sleeptime) - (agetime / worktime)
                // Si estás jubilado
            } else {
                agetime = Float(averageAge) - agetime
                agetime = agetime - (agetime / sleeptime)
            }
        }
        // Devuelve las horas de ocio estimadas
        return Float((agetime + Float(averageAge)).roundToDecimal(1))
    }
}
