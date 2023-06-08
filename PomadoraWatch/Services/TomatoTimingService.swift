//
//  TomatoTimingService.swift
//  PomadoraWatch
//
//  Created by hsnl on 2023/6/7.
//

import Foundation

class TomatoTimingService: ObservableObject {
    static let shared = TomatoTimingService()
    
    func startActiveCountdown() {
        let url = URL(string: "https://3cunhp8c47.execute-api.us-east-1.amazonaws.com/Prod/records/activate")!
        
        var request = URLRequest(url: url)
        let json: [String: Any] = ["userId": "8787878787",
                                   "name": "Not decided",
                                   ]
        let jsonData = try? JSONSerialization.data(withJSONObject: json)
        // create post request
        request.httpMethod = "POST"
        request.httpBody = jsonData
        
        let task = URLSession.shared.dataTask(with: request) { data, response, error in
            guard let data = data,
                  let response = response as? HTTPURLResponse,
                  error == nil else {
                print("error", error ?? URLError(.badServerResponse))
                return
            }
            
            guard (200 ... 299) ~= response.statusCode else {                    // check for http errors
                print("statusCode should be 2xx, but is \(response.statusCode)")
                print("response = \(response)")
                return
            }
            print("Upload data succeed")
        }

        task.resume()
    }
}
