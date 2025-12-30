//
//  ContentView.swift
//  SubModuleTestApp
//
//  Created by 이동훈 on 2023/05/23.
//

import SwiftUI
import TestMainFramework

import TestPrintHelloFramework

struct ContentView: View {
    var body: some View {
        
        
        VStack {
            
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            
            Text("Hello, world! HaHA")
                .padding()
            
            Text(TestMainSDK.shared.getLog())
                .multilineTextAlignment(.center)
        }
        .padding()
        .onAppear {
            TestMainSDK.shared.printLog()
            
//            AF.request("url", method: .get).response { response in
//                switch response.result {
//                case .success(let value):
//                    if let value = value, let value = String(data: value, encoding: .utf8) {
//                        print(value)
//                    }
//                    else {
//                        print("Success get response, but cannot convert to string, value is \(String(describing: value))")
//                    }
//                case .failure(let error):
//                    print(error.localizedDescription)
//                }
//            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
