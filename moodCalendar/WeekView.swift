//
//  WeekView.swift
//  moodCalendar
//
//  Created by Benjamin Chang on 2021-05-02.
//

import SwiftUI


struct WeekView: View {
    
    var body: some View {
        
        VStack {
            
            Spacer()
            
            Text("This is the week of")
            
            Spacer()
            // Days
            VStack{
                
                
                HStack {
                    Spacer()
                    ZStack{
                        Rectangle().fill(Color.white).frame(width: 120,height: 50)
                        Text("Monday")
                    }
                    Spacer()
                    Rectangle().fill(colors[2]).frame(width: 50, height: 50)
                    Spacer()
                }.padding()
                
                HStack {
                    Spacer()
                    ZStack{
                        Rectangle().fill(Color.white).frame(width: 120,height: 50)
                        Text("Tuesday")
                    }
                    Spacer()
                    Rectangle().fill(colors[3]).frame(width: 50, height: 50)
                    Spacer()
                }.padding()
                
                HStack {
                    Spacer()
                    ZStack{
                        Rectangle().fill(Color.white).frame(width: 120,height: 50)
                        Text("Wednesday")
                    }
                    Spacer()
                    Rectangle().fill(colors[4]).frame(width: 50, height: 50)
                    Spacer()
                }.padding()
                
                HStack {
                    Spacer()
                    ZStack{
                        Rectangle().fill(Color.white).frame(width: 120,height: 50)
                        Text("Thursday")
                    }
                    Spacer()
                    Rectangle().fill(colors[5]).frame(width: 50, height: 50)
                    Spacer()
                }.padding()
                
                HStack {
                    Spacer()
                    ZStack{
                        Rectangle().fill(Color.white).frame(width: 120,height: 50)
                        Text("Friday")
                    }
                    Spacer()
                    Rectangle().fill(colors[6]).frame(width: 50, height: 50)
                    Spacer()
                }.padding()
                
                HStack {
                    Spacer()
                    ZStack{
                        Rectangle().fill(Color.white).frame(width: 120,height: 50)
                        Text("Saturday")
                    }
                    Spacer()
                    Rectangle().fill(colors[7]).frame(width: 50, height: 50)
                    Spacer()
                }.padding()
                
                HStack {
                    Spacer()
                    ZStack{
                        Rectangle().fill(Color.white).frame(width: 120,height: 50)
                        Text("Sunday")
                    }
                    Spacer()
                    Rectangle().fill(colors[1]).frame(width: 50, height: 50)
                    Spacer()
                }.padding()
                
            }
            
            Spacer()
            
            Rectangle().fill(Color.gray).frame(height:50)
        }
    }
}

struct WeekView_Previews: PreviewProvider {
    static var previews: some View {
        WeekView()
    }
}
