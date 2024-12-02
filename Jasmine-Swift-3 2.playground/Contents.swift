import UIKit
// Parent Class (Super Class)
class Computer {
    private var brand: String
    private var processor: String
    private var ram: Int
    
    init (brand:String, processor:String, ram:Int){
        self.brand = brand
        self.processor = processor
        self.ram = ram
    }
    func displayInfo(title: String){
        print("\(title)\n Brand: \(self.brand), Processor: \(self.processor), Ram:\(self.ram)")
    }
}
// Laptop Subclass
class Laptop: Computer {
    private var isTouchscreen: Bool
    
    init (brand:String, processor:String, ram:Int, isTouchscreen:Bool){
        self.isTouchscreen = isTouchscreen
        super.init(brand:brand, processor:processor, ram:ram)
    }
    override func displayInfo(title: String){
        super.displayInfo(title:title)
        if self.isTouchscreen{
            print ("Touchscreen: Yes")
        } else{
            print ("Touchscreen: No")
        }
    }
}
// Desktop Subclass
class Desktop: Computer {
    private var hasDedicatedGPU: Bool
        
    init (brand:String, processor:String, ram:Int, hasDedicatedGPU:Bool){
        self.hasDedicatedGPU = hasDedicatedGPU
        super.init (brand:brand, processor:processor, ram:ram)
        }
    override func displayInfo(title: String){
        super.displayInfo(title:title)
        if self.hasDedicatedGPU{
                print ("Dedicated GPU: Yes")
        } else{
            print ("Dedicated GPU: No")
        }
    }
}
// Server Sub Class
class Server: Computer {
    private var rackUnits: Int
    
    init (brand:String, processor:String, ram:Int, rackUnits:Int){
        self.rackUnits = rackUnits
        super.init (brand:brand, processor:processor, ram:ram)
    }
    override func displayInfo(title: String){
        super.displayInfo(title:title)
        print ("Rack Units: \(self.rackUnits)")
    }
}
    
    
    // ==========  Test Code ============
    var laptop: Laptop = Laptop (brand: "Apple", processor: "Intel Core i5", ram: 16, isTouchscreen: false)
    laptop.displayInfo(title: "Laptop Specs: ")
    print ()
    
    var desktop: Desktop = Desktop (brand: "HP", processor: "Intel Core i7", ram: 32, hasDedicatedGPU: true)
    desktop.displayInfo(title: "Desktop Specs: ")
    print ()
    var server: Server = Server (brand: "Dell", processor: "Intel Core i9", ram: 64, rackUnits: 12)
    server.displayInfo(title: "Server Specs: ")
    print()




