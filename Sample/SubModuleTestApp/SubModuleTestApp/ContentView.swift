//
//  ContentView.swift
//  SubModuleTestApp
//
//  Created by 이동훈 on 2023/05/23.
//

import SwiftUI
import TestMainFramework


import MobWithADSDKFramework


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
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
