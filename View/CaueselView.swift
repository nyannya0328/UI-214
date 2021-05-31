//
//  CaueselView.swift
//  UI-214
//
//  Created by にゃんにゃん丸 on 2021/05/31.
//

import SwiftUI

struct CaueselView: View {
    @State var currentTab : Int = 1
    @State var showAnimation = false
    var body: some View {
       
            
        VStack{
            
            VStack{
                
                TextShimer(title: "SCROLL", showAnimation: $showAnimation)
                    .shadow(color: .primary, radius: 10, x: 0.0, y: 0.0)
                    .frame(maxWidth: .infinity,alignment: .leading)
                
                TextShimer(title: "すくろーる", showAnimation: $showAnimation)
                    .shadow(color: .primary, radius: 10, x: 0.0, y: 0.0)
                    .frame(maxWidth: .infinity,alignment: .trailing)
                    .padding(.trailing,10)
                
                Toggle(isOn: $showAnimation, label: {
                    Text("まるちからー")
                       
                })
                
                
                
            }
            .frame(width: UIScreen.main.bounds.width, height: 100)
            
            
            TabView(selection:$currentTab){
                
                
                
                ForEach(1...13,id:\.self){index in
                    
                    
                    GeometryReader{proxy in
                        
                        let frame = proxy.frame(in:.global)
                        
                        
                        Image("post\(index)")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: frame.width, height: frame.height)
                            .offset(x:-frame.minX)
                           
                        
                        
                    }
                    .frame(height: UIScreen.main.bounds.height / 2)
                    .cornerRadius(15)
                    .padding(10)
                    .foregroundColor(.white)
                    .shadow(color: .accentColor, radius: 5, x: 5, y: 5)
                    .shadow(color: .red, radius: 5, x: -5, y: -5)
                    .cornerRadius(15)
                    .padding(.horizontal,25)
                    .overlay(
                    
                      Image("post\(index)")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 80, height: 80)
                        .clipShape(Circle())
                        .shadow(color: .red, radius: 5, x: -5, y: -5)
                        .offset(x: -30, y: -15)
                       
                        ,alignment: .bottomTrailing
                    
                    )
                   
                    
                   
                    
                }
                
                
            }
            .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
        }
        .preferredColorScheme(.dark)
            
        
        
    }
}

struct CaueselView_Previews: PreviewProvider {
    static var previews: some View {
        CaueselView()
    }
}

struct TextShimer : View {
    var title : String
    @State var animation = false
    
    @Binding var showAnimation : Bool
    
    var body: some View{
        
        
        ZStack{
            
            
            Text(title)
                .font(.system(size: 30, weight: .heavy))
                .foregroundColor(.white)
            
            HStack(spacing:0){
                
                
                ForEach(0..<title.count,id:\.self){index in
                    
                    
                    Text(String(title[title.index(title.startIndex,offsetBy : index)]))
                   
                        .font(.system(size: 30, weight: .heavy))
                        .foregroundColor(showAnimation ? getColor() : .white)
                    
                    
                    
                    
                    
                    
                    
                }
                
                
            }
            .mask(
            
            
            Rectangle()
                .fill(
                
                    LinearGradient(gradient: .init(colors: [.purple,.blue]), startPoint: .bottom, endPoint: .top)
                
                )
                .rotationEffect(.init(degrees: 50))
                .padding(10)
                .offset(x: -250)
                .offset(x: animation ? 500 : 0)
            
            )
            .onAppear(perform: {
                withAnimation(Animation.linear(duration: 1.3).repeatForever(autoreverses: false)){
                    
                    
                    animation.toggle()
                }
            })
            
            
        }
    }
    
    func getColor()->Color{
        
        
        let color = UIColor(displayP3Red: CGFloat.random(in: 0...1), green: CGFloat.random(in: 0...1), blue: CGFloat.random(in: 0...1), alpha: 1)
        
        return Color(color)
    }
    
}
