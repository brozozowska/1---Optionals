/*:
## Exercise - Failable Initializers

 Create a `Computer` struct with two properties, `ram` and `yearManufactured`, where both parameters are of type `Int`. Create a failable initializer that will only create an instance of `Computer` if `ram` is greater than 0, and if `yearManufactured` is greater than 1970, and less than 2020.
 */
struct Computer {
    var ram: Int
    var yearManufactured: Int
    
    init?(ram: Int, yearManufactured: Int) {
        if ram <= 0 || yearManufactured < 1970 || yearManufactured > 2020 {
            return nil
        } else {
            self.ram = ram
            self.yearManufactured = yearManufactured
        }
    }
}
//:  Create two instances of `Computer?` using the failable initializer. One instance should use values that will have a value within the optional, and the other should result in `nil`. Use if-let syntax to unwrap each of the `Computer?` objects and print the `ram` and `yearManufactured` if the optional contains a value.
let computerOne = Computer(ram: 16, yearManufactured: 2019)
let computerTwo = Computer(ram: 0, yearManufactured: 2021)

if let unwrappedComputerOne = computerOne {
    print("Your computer have \(unwrappedComputerOne.ram) RAM and made in \(unwrappedComputerOne.yearManufactured) year.")
} else {
    print("The RAM you specified for the computer is less than 0 and manufactured year is more than 2020.")
}

if let unwrappedComputerTwo = computerTwo {
    print("Your computer have \(unwrappedComputerTwo.ram) RAM and made in \(unwrappedComputerTwo.yearManufactured) year.")
} else {
    print("The RAM you specified for the computer is less than 0 or manufactured year is more than 2020 or less than 1970.")
}
/*:
[Previous](@previous)  |  page 5 of 6  |  [Next: App Exercise - Workout or Nil](@next)
 */
