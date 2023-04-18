//
//  TaskRow.swift
//  2Doo
//
//  Created by David Pinto on 2023-04-14.
//

import SwiftUI

struct TaskRow: View {
    var task: String
    var completedTask: Bool
    
    var body: some View {
        HStack(spacing:20){
            Image(systemName: completedTask ?
                  "checkmark.circle" : "circle")
            Text(task)
        }
    }
}

struct TaskRow_Previews: PreviewProvider {
    static var previews: some View {
        TaskRow(task: "Finish mobile", completedTask: true)
    }
}
