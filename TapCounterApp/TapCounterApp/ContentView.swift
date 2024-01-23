//
//  ContentView.swift
//  TapCounterApp
//
//

import SwiftUI
import SwiftData

struct ContentView: View {
    @Environment(\.modelContext) private var modelContext
    @State var counter : Int = 1
    
    var body: some View {
        ZStack{
            
            VStack{
                Text(String(counter))
                    .bold()
                    .font(Font.custom("Helvetica Neue", size: 100))
                HStack{
                    Button{
                        // Add 1 to counter
                        counter = counter + 1
                        
                    }label: {
                        Text("Increase")
                            .bold()
                            .font(Font.custom("Helvetica Neue", size: 18))
                            .padding(20)
                            .foregroundColor(Color.white)
                            .background(Color.green)
                            .cornerRadius(12)
                    }
                    Button{
                        // set counter 0
                        counter = 0
                    }label: {
                        Text("Reset")
                            .bold()
                            .font(Font.custom("Helvetica Neue", size: 18))
                            .padding(20)
                            .foregroundColor(Color.white)
                            .background(Color.yellow)
                            .cornerRadius(12)
                    }
                    Button{
                        // subtract 1 from counter
                        counter = counter - 1
                    }label: {
                        Text("Decrease")
                            .bold()
                            .font(Font.custom("Helvetica Neue", size: 18))
                            .padding(20)
                            .foregroundColor(Color.white)
                            .background(Color.red)
                            .cornerRadius(12)
                    }
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
