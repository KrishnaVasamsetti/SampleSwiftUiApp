//
//  ContentView.swift
//  SampleSwiftUiApp
//
//  Created by Vasamsetti Pavana Venkata Krishna  on 14/07/22.
//

import SwiftUI

struct ContentView: View {
    
    @State var selectedColor: Color = Color.red
    @State var showColorPicker: Bool = false
    
    @State var showDatePicker: Bool = false
    @State var selectedDate: Date = Date()
    
    var body: some View {
        VStack {
        Text("Hello, Krishna!\(selectedDate)")
            .padding()
            .foregroundColor(selectedColor)
            .background(Color.yellow)
            .clipShape(RoundedRectangle(cornerRadius: 20))
            .navigationTitle("Sample Swift UI App")
            .navigationBarHidden(false)
            .navigationViewStyle(.stack)
        }
        Button("Click Me") {
            showColorPicker = !showColorPicker
            showDatePicker = !showDatePicker
        }
        if(showColorPicker) {
            ColorPicker("Selection", selection: $selectedColor)
        }
        if(showDatePicker) {
            DatePicker(selection: $selectedDate, label: { Text("Date") })
                        .datePickerStyle(WheelDatePickerStyle())
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
