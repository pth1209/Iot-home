//
//  ContentView.swift
//  morning-routine
//
//  Created by Lawrence Park on 10/18/22.
//

import SwiftUI
import HealthKit

struct ContentView: View {
    
    private var healthStore: HealthStore?
    
    init() {
        healthStore = HealthStore()
    }
    
    var body: some View {
        Text("I hate swift").padding()
        
            .onAppear{
                if let healthStore = healthStore {
                    healthStore.requestAuthorization {success in}
                }
            }
        
     
                }
            }
                


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
