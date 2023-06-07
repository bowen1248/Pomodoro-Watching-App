//
//  NotifySettingView.swift
//  PomadoraWatch
//
//  Created by hsnl on 2023/5/10.
//

import SwiftUI

struct NotifySettingView: View {
    @State var isEnabled = false
    @State var showDatePicker = false
    @State var pickTime = Date()
    
    var body: some View {
        VStack(alignment: .center) {
            Toggle("任務通知", isOn: $isEnabled)
            Divider()
            Toggle("整天通知", isOn: $isEnabled)
            HStack {
                Text("每日 " + pickTime.toTimeString())
                Spacer()
                Button {
                    showDatePicker.toggle()
                } label: {
                    Text("設定")
                        .frame(width: 80, height: 40)
                        .background(.orange)
                        .foregroundColor(.white)
                }
            }
            if showDatePicker {
                DatePicker("", selection: $pickTime, displayedComponents: .hourAndMinute)
                    .labelsHidden()
                    .datePickerStyle(WheelDatePickerStyle())
            }
            Spacer()
        }
        .padding()
        .navigationTitle("Notify setting")
    }
}

struct NotifySettingView_Previews: PreviewProvider {
    static var previews: some View {
        NotifySettingView()
    }
}
