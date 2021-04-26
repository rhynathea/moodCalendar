//
//  ContentView.swift
//  moodCalendar
//
//  Created by Benjamin Chang on 2021-04-25.
//

import SwiftUI

extension Date {
    func asString() -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MMMM dd, yyyy"
        return dateFormatter.string(from: self)
    }
}

struct ContentView: View {
    @State private var mood:Color = Color.gray

    
    let date = Date()
    
   
    
    var body: some View {
        VStack{
            Spacer()
            
            Text("Today is \(date.asString())").padding()
            
            
            Text("Hello, how are you feeling today?").padding()
            
            
            Rectangle().fill(mood)
                .frame(width: 150, height: 150).padding()
            
            Spacer()
            
            HStack{
                Spacer().frame(width:25)
                HStack{
                    
                    Button(action: {
                        mood = Color.blue
                        print("I'm feeling like a 1")
                    }, label: {
                        ZStack{
                            Rectangle().fill(Color.blue).frame(width: 50, height:50)
                            
                            Text("1").foregroundColor(Color.black)
                        }
                    })
                    Spacer()
                    
                    Button(action: {
                        mood = Color.purple
                        print("I'm feeling like a 2")
                    }, label: {
                        ZStack{
                            Rectangle().fill(Color.purple).frame(width: 50, height:50)
                            
                            Text("2").foregroundColor(Color.black)
                        }
                    })
                    
                    Spacer()
                    
                    Button(action: {
                        mood = Color.yellow
                        print("I'm feeling like a 3")
                    }, label: {
                        ZStack{
                            Rectangle().fill(Color.yellow).frame(width: 50, height:50)
                            
                            Text("3").foregroundColor(Color.black)
                        }
                    })
                    
                    Spacer()
                    
                    Button(action: {
                        mood = Color.green
                        print("I'm feeling like a 4")
                    }, label: {
                        ZStack{
                            Rectangle().fill(Color.green).frame(width: 50, height:50)
                            
                            Text("4").foregroundColor(Color.black)
                        }
                    })
                    
                    Spacer()
                    
                    Button(action: {
                        mood = Color.pink
                        print("I'm feeling like a 5")
                    }, label: {
                        ZStack{
                            Rectangle().fill(Color.pink).frame(width: 50, height:50)
                            
                            Text("5").foregroundColor(Color.black)
                        }
                    })
                }
                Spacer().frame(width:25)
            }
            Spacer()
            
            HStack{
                Spacer()
                Button("Skip", action: {
                    print("i'm skipping")
                }).foregroundColor(Color.black)
                Spacer()
                
                Button("Continue", action: {
                    print("huehue")
                }).foregroundColor(Color.black)
                
                Spacer()
            }
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

