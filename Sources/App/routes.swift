import Vapor

func routes(_ app: Application) throws {
    app.get { req async in
        "It works!"
    }

    app.get("hello") { req async -> String in
        "Hello, world!"
    }
    
    app.get("hello", ":name") { req -> String in
        let name = req.parameters.get("name")!
        return "Hello, \(name)!"
    }
    
    // Similar to `swift run App routes` 
    app.get("routes") { req in
        let routes = app.routes.all;
        let string_routes = routes.map({ (r) -> String in
           return "\(r)"
        });
        return string_routes.joined(separator: "\n")
    }
    
    app.get("env") { req -> String in
        let env = Environment.get("APP_ENV")
        return (env ?? "NOPE");
    }
}
