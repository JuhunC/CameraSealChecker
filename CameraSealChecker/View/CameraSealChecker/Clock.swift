//
//  Clock.swift
//  CameraSealChecker
//
//  Created by JuhunChoi on 2022/01/06.
//

import SwiftUI

struct Clock: View {
    @State var time: Time
    var body: some View {
        HStack{
            VStack{
                Button(action: {
                    time.addHour()
                }, label: {
                    Text("Up")
                })
                Text(String(time.hour)).font(.title)
                Button(action: {
                    time.subHour()
                }, label: {
                    Text("Down")
                })
            }
            VStack{
                Text("").font(.title)
                Text(":").font(.title)
                Text("").font(.title)
            }
            VStack{
                Button(action: {
                    time.addMin()
                }, label: {
                    Text("Up")
                })
                Text(String(time.min)).font(.title)
                Button(action: {
                    time.subMin()
                }, label: {
                    Text("Down")
                })
            }
            VStack{
                Text(time.ampm ? "AM" : "PM")
            }
        }
    }
}

struct Clock_Previews: PreviewProvider {
    static var previews: some View {
        Clock(time: Time(hour:1, min:2, sec: 3, ampm: true))
//        Clock(time: Time(hour:11, min:22, sec:33, ampm: false))
    }
}
