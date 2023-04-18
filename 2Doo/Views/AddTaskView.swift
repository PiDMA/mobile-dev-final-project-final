//
//  AddTaskView.swift
//  2Doo
//
//  Created by David Pinto on 2023-04-14.
//

import SwiftUI

struct AddTaskView: View {
    @EnvironmentObject var realmManager: RealmManager
    @State private var title: String = ""
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        VStack(alignment: .leading, spacing: 20){
            Text("Add a Todo")
                .font(.title3).bold()
                .frame(maxWidth: .infinity, alignment: .leading)
            TextField("Enter task", text: $title)
                .textFieldStyle(.roundedBorder)
            Button{
                if title != ""{
                    realmManager.addTask(taskTitle: title)
                }
                dismiss()
            } label: {
                Text("Add")
                    .foregroundColor(.white)
                    .padding()
                    .padding(.horizontal)
                    .background(Color(red: 0.344, green: 0.507, blue: 0.34))
                    .cornerRadius(30)
            }
            Spacer()
        }
        .padding(.top, 40)
        .padding(.horizontal)
        .background(Color(red: 0.854, green: 0.843, blue: 0.804))
    }
}

struct AddTaskView_Previews: PreviewProvider {
    static var previews: some View {
        AddTaskView()
            .environmentObject(RealmManager())
    }
}
