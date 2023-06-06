//
//  ContentView.swift
//  NetworkingWithSwiftUI
//
//  Created by Bhushan Mokal on 06/06/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
            List (1..<4 ){ item in
                HStack{
                    AsyncImage(url:URL(string: "http://staging.php-dev.in:8844//trainingapp//uploads//prod_img//thumb//medium//9dc6234da018916e545011fa1.jpeg")){ image in image.resizable() }
                        placeholder: { ProgressView()} .frame(width: 70, height: 60)
                    VStack(alignment: .leading){
                        Text("4 Seater Dining Table")
                            .font(.system(size: 20,weight: .medium))
                        Text("Future Furniture Center")
                            .font(.system(size: 15,weight: .light))
                           
                        HStack{
                            Text("Rs. 27,800")
                                .font(.system(size: 20,weight: .medium))
                                .foregroundColor(.red)
                            Spacer()
                            HStack(spacing: 10){
                                ForEach(0..<5){ _ in
                                    Image(systemName:"star")
                                        .frame(width: 10,height: 10)
                                }
                            }
                            .frame(width: 60,height: 10)
                            
                        }
                    }
                    .padding(15)
                }
            }
        }
    }

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
