//
//  Home.swift
//  UI-214
//
//  Created by にゃんにゃん丸 on 2021/05/30.
//

import SwiftUI

struct Home: View {
    @Namespace var animation
    @State var slected = "house.fill"
    
    @Environment(\.colorScheme) var scheme
    
    @State var topHeaderOffset : CGFloat = 0
     
    
    var body: some View {
        VStack{
            
            
            HStack{
                
                Text("_IGANA")
                    .fontWeight(.bold)
                    .foregroundColor(.primary)
                
                Spacer()
                
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Image(systemName: "plus.circle.fill")
                        .font(.title)
                        .foregroundColor(.primary)
                })
                
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Image(systemName: "line.horizontal.3")
                        .font(.title)
                        .foregroundColor(.primary)
                })
                
            }
            .padding([.horizontal,.top])
            .overlay(
            
                GeometryReader{proxy -> Color in
                    let minY = proxy.frame(in:.global).minY
                    
                    DispatchQueue.main.async {
                        
                        if topHeaderOffset == 0{
                            
                            
                            topHeaderOffset = minY
                        }
                        
                        
                        
                    }
                    
                    
                    
                    return Color.clear
                   
                    
                    
                    
                    
                }
                .frame(width: 0, height: 0)
            
                ,alignment: .bottom
            )
            
            
            ScrollView(.vertical, showsIndicators: false, content: {
                
                
                VStack{
                    Divider()
                    
                    
                    HStack{
                        
                        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                            Image("logo")
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 70, height: 70)
                                .clipShape(Circle())
                                .overlay(
                                
                                Image(systemName: "plus")
                                    .foregroundColor(.white)
                                    .padding(6)
                                    .background(Color.blue)
                                    .clipShape(Circle())
                                    .padding(2)
                                    .background(
                                        Color.white
                                            .clipShape(Circle())
                                    
                                    
                                    )
                                    
                                    
                                    
                                
                                
                                    ,alignment: .bottomTrailing
                                )
                        })
                        
                        VStack(spacing:5){
                            
                            
                            Text("186")
                                .fontWeight(.light)
                                .foregroundColor(.gray)
                            
                            
                            Text("Posts")
                                .font(.callout)
                                .fontWeight(.bold)
                            
                            
                            
                        }
                        .frame(maxWidth: .infinity)
                        
                        
                        VStack(spacing:5){
                            
                            
                            Text("16")
                                .fontWeight(.light)
                                .foregroundColor(.gray)
                            
                            
                            Text("Followers")
                                .font(.callout)
                                .fontWeight(.bold)
                            
                            
                            
                        }
                        .frame(maxWidth: .infinity)
                        
                        
                        VStack(spacing:5){
                            
                            
                            Text("15")
                                .fontWeight(.light)
                                .foregroundColor(.gray)
                            
                            
                            Text("Following")
                                .font(.callout)
                                .fontWeight(.bold)
                            
                            
                            
                        }
                        .frame(maxWidth: .infinity)
                        
                        
                    }
                    .padding()
                    
                    VStack(alignment: .leading, spacing: 8, content: {
                        
                        Text("EveryThing going to be okay!")
                            .font(.title)
                            .fontWeight(.semibold)
                            .shadow(color: .primary, radius: 10, x: 5, y: 5)
                        
                        
                        Text("I study Swift UI on youtube")
                            .font(.footnote)
                        
                        Text("The best in New York")
                            .font(.headline)
                            .fontWeight(.light)
                        
                        
                        Link(destination: URL(string: "https://www.apple.com")!, label: {
                            Text("Apple.com")
                                .fontWeight(.bold)
                                .foregroundColor(.accentColor)
                        })
                        
                        
                    })
                    .padding(.horizontal)
                    
                    
                    HStack{
                        
                        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                            Text("Edite Profile")
                            
                                .fontWeight(.bold)
                                .foregroundColor(.primary)
                                .padding(.horizontal)
                                .padding(.vertical,10)
                                .frame(maxWidth: .infinity)
                                .background(
                                
                                RoundedRectangle(cornerRadius: 5)
                                    .stroke(Color.green)
                                
                                )
                        })
                        
                        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                            Text("Promotions")
                              
                                .fontWeight(.bold)
                                .foregroundColor(.primary)
                                .padding(.horizontal)
                                .padding(.vertical,10)
                                .frame(maxWidth: .infinity)
                                .background(
                                
                                RoundedRectangle(cornerRadius: 5)
                                    .stroke(Color.green)
                                
                                )
                        })
                        
                        
                    }
                    .padding([.horizontal,.top])
                    
                    
                    
                    ScrollView(.horizontal, showsIndicators: false, content: {
                        HStack{
                            
                            
                            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                                Image(systemName: "plus")
                                    .font(.title)
                                    .foregroundColor(.primary)
                                    .padding(15)
                                    .background(Circle().stroke(Color.red))
                                    
                            })
                            
                            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                                Image(systemName: "gear")
                                    .font(.title)
                                    .foregroundColor(.primary)
                                    .padding(15)
                                    .background(Circle().stroke(Color.blue))
                                    
                            })
                            
                        }
                        .padding(.top,5)
                    })
                    
                    GeometryReader{proxy ->AnyView in
                        
                        let minY = proxy.frame(in: .global).minY
                        
                        let offset = minY - topHeaderOffset
                        
                        
                        return AnyView(
                        
                        
                            
                            HStack(spacing:0){
                                
                                
                                TabButton(image: "house.fill", selected: $slected, issystemimage: true, animation: animation)
                                
                                TabButton(image: "reels", selected: $slected, issystemimage: false, animation: animation)
                                
                                TabButton(image: "bicycle", selected: $slected, issystemimage: true, animation: animation)
                                
                               
                                
                                
                                
                            }
                            .frame(height: 70,alignment: .bottom)
                            
                            .background(scheme == .dark ? Color.black : Color.white)
                            .offset(y: offset < 0 ? -offset : 0)
                        
                        
                        )
                        
                        
                    }
                    .frame(height: 70)
                    .zIndex(4)
                    
                    
                    ZStack{
                        
                        
                        LazyVGrid(columns: Array(repeating: GridItem(.flexible(),spacing: 5), count: 3), spacing: 5, content: {
                            
                            
                            ForEach(1...39,id:\.self){post in
                                
                            
                                
                                
                                GeometryReader{proxy in
                                    
                                    
                                    let width = proxy.frame(in:.global).width
                                    
                                    
                                    ImageView(width: width, index: post)
                                    
                                    
                                    
                                    
                                }
                                .frame(height: 120)
                                
                                
                            }
                            
                            
                            
                            
                          
                        })
                        
                    }
                    
                    
                    
                    
                    
                    
                    
                }
                
            })
            
        }
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}


struct ImageView : View {
    var width : CGFloat
    var index : Int
    
    var body: some View{
        
        
        let imageName = index > 13 ? index - (13 * (index / 13)) == 0 ? 13 : index - (13 * (index/13)) : index
            
            
            
        Image("post\(imageName)")
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(width: width, height: 120)
            .cornerRadius(0)
        
        
        
        
    }
}

struct TabButton : View {
    var image :String
    @Binding var selected : String
    var issystemimage : Bool
    var animation : Namespace.ID
    
    var body: some View{
        
        
        Button(action: {
            
            
            withAnimation(.easeInOut){
                
                selected = image
                
                
            }
            
        }, label: {
            VStack{
                
                
                (
                
                    issystemimage ? Image(systemName: image) : Image(image)
                
                )
                .resizable()
                .renderingMode(.template)
                .aspectRatio(contentMode: .fit)
                .frame(width: 28, height: 28)
                .foregroundColor(selected == image ? .primary : .gray)
                ZStack{
                    
                    
                    if selected == image{
                        
                        RoundedRectangle(cornerRadius: 5)
                            .fill(Color.blue)
                            .matchedGeometryEffect(id: "TAB", in: animation)
                        
                    }
                    
                    else{
                        
                        
                        RoundedRectangle(cornerRadius: 5)
                            .fill(Color.clear)
                    }
                    
                }
                .frame(height: 1)
                
            }
        })
        
        
        
    }
    
}
