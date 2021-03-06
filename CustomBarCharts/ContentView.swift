//
//  ContentView.swift
//  CustomBarCharts
//
//  Created by 野澤拓己 on 2020/09/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        HStack(alignment: .bottom, spacing: 8) {
            
            ForEach(percents) { i in
                
                Bar(percent: i.percent, day: i.day)
                
            }
            
        }.frame(height: 250)
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct Bar : View {
    
    var percent : CGFloat = 0
    var day = ""
    
    var body : some View {
        
        VStack {
            
            Text(String(format: "%.0f", Double(percent)) + "%").foregroundColor(Color.black.opacity(0.5))
            
            Rectangle().fill(Color.red).frame(width: UIScreen.main.bounds.width / 7 - 12, height: getHeight())
            
            Text(day).foregroundColor(Color.black.opacity(0.5))
        }
        
        
    }
    
    func getHeight() -> CGFloat {
        return 200 / 100 * percent
    }
}


// Sample Datas

struct type : Identifiable {
    
    var id : Int
    var percent : CGFloat
    var day : String
    
}

var percents = [
    type(id: 0, percent: 35, day: "Mon"),
    type(id: 1, percent: 100, day: "Tue"),
    type(id: 2, percent: 90, day: "Wed"),
    type(id: 3, percent: 50, day: "Thu"),
    type(id: 4, percent: 25, day: "Fri"),
    type(id: 5, percent: 5, day: "Sat"),
    type(id: 6, percent: 55, day: "Sun")
]
}
