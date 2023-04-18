//
//  SmallAddBtn.swift
//  2Doo
//
//  Created by David Pinto on 2023-04-15.
//

import SwiftUI

struct SmallAddBtn: View {
    var body: some View {
        ZStack{
            Circle()
                .frame(width:50)
                .foregroundColor(Color(red: 0.344, green: 0.507, blue: 0.34))
            Text("+")
                .font(.title)
                .fontWeight(.heavy)
                .foregroundColor(.white)
        }
        .frame(height:50)
    }
}

struct SmallAddBtn_Previews: PreviewProvider {
    static var previews: some View {
        SmallAddBtn()
    }
}
