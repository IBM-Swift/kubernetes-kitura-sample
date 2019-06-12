import Kitura
import Application
import LoggerAPI

do {

    let app = try App()
    try app.run()

} catch let error {
    Log.error(error.localizedDescription)
}
