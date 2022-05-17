//
//  FmaxTestAdvertisingSdk.swift
//  FmaxTestAdvertisingSdk
//
//  Created by Maksim on 16.05.2022.
//

import Foundation
import Alamofire
public class FmaxTestAdvertisingSdk{
    static public func test(){
        print("start test")
        
        struct Login: Encodable {
            let email: String
            let password: String
        }

        let login = Login(email: "test@test.test", password: "testPassword")

        AF.request("https://httpbin.org/post",
                   method: .post,
                   parameters: login,
                   encoder: JSONParameterEncoder.default).response { response in
            debugPrint(response)
        }
    }
}
