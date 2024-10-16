//
//  ContentView.swift
//  FormExample
//
//  Created by ahmet karadağ on 15.10.2024.
//

import SwiftUI

struct ContentView: View {
    @State var nameSurname: String = ""
    @State var phoneNumber: String = ""
    @State var isActive : Bool = true
    @State var notificationEnable = false
    @State var pickNotification = 0
    var optionNotification = ["always", "only using app", "locked", "never"]
    
    var body: some View {
       
        NavigationStack {
            Form {
                Section(header: Text("kullanıcı Bilgisi")){
                    TextField("name surname", text: self.$nameSurname)
                    TextField("phone number", text: self.$phoneNumber)
                    Toggle("account Active", isOn: self.$isActive)
                    
                }
                Section(header: Text("Notifications")){
                    Toggle("activated", isOn: self.$notificationEnable)
                    
                }
                Picker(selection: $pickNotification) {
                    ForEach (0..<optionNotification.count) {option in
                        Text(self.optionNotification[option])
                    }
                } label: {
                    Text("Suggestions")
                }
                Section(header: Text("Hakkında")){
                    HStack{
                        Text("version")
                        Spacer()
                        Text("ios 18")
                    }
                    
                }
                Section(header: Text("Reset Settings")){
                    Button(action: {
                        Text("clean")
                    }, label: {
                        Text("reset phone")
                    })
                }
            }.navigationTitle("Ayarlar")
        }
    }
}

#Preview {
    ContentView()
}
