import Alamofire
import Kingfisher
public class ReplaceMe {
    public static func test() {
        print("start test")
                
        KF.url(URL(string: "https://httpbin.org/post"))
            .loadDiskFileSynchronously()
            .cacheMemoryOnly()
            .fade(duration: 0.25)
        
                struct Login: Encodable {
                    let email: String
                    let password: String
                }

                let login = Login(email: "test@test.test", password: "testPassword")

        let test = Session.default
        print("test: \(test)")
//                AF.request("https://httpbin.org/post",
        let url = URL(string: "https://httpbin.org/post")!
        let method = HTTPMethod.post
        let encoder = JSONParameterEncoder.default
        test.request(url,
                    method: method,
                    parameters: login)
        
        // .response { response in
//        debugPrint(response)
//    }
        //
    }
}
