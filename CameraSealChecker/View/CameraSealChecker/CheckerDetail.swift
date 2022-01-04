//
//  CheckerDetail.swift
//  CameraSealChecker
//
//  Created by JuhunChoi on 2022/01/04.
//

import SwiftUI

struct CheckerDetail: View {
    @EnvironmentObject var modelData: ModelData
    var checker: Checker
    
    var body: some View {
        ScrollView{
            HStack{
                VStack{
                    Text(checker.name)
                        .font(.largeTitle)
                        .bold()
                }
                Spacer()
            }
            .padding()
            
            HStack{
                Text(String(checker.time.hour))
                Text(String(checker.time.min))
                Text(String(checker.time.sec))
                Spacer()
            }
            .padding()
        }
    }
}

struct CheckerDetail_Previews: PreviewProvider {
    static var previews: some View {
        CheckerDetail(checker: ModelData().checkers[0])
    }
}
