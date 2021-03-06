import Foundation

public struct Request {

     public let directory: String
     public let method: String
     public let path: String
     public let httpVersion: String
     public var queries: [String: String] 
     public var body: [String: String] 
     public var cookie: [String: String]  
     public var headers: [String: String]

     public init(directory: String, method: String, path: String, httpVersion: String, queries: [String: String], body: [String: String], cookie: [String: String], headers: [String: String]) {
         self.directory = directory
         self.method = method
         self.path = path
         self.httpVersion = httpVersion
         self.queries = queries
         self.body = body
         self.cookie = cookie
         self.headers = headers
     }

}
