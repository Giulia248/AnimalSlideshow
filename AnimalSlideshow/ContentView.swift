//
//  ContentView.swift
//  AnimalSlideshow
//
//  Created by user on 01/07/22.
//

import SwiftUI
import ImageSliderSwiftUI


struct ContentView: View {
    @State var ck = false
    @State var opacity = 1.0
    @State var img1 = "https://i.pinimg.com/originals/c6/3f/e3/c63fe381a3df0db58773caae31489834.jpg"
    @State var img2 = "https://i.pinimg.com/originals/c6/3f/e3/c63fe381a3df0db58773caae31489834.jpg"
    @State var img3 = "https://i.pinimg.com/originals/c6/3f/e3/c63fe381a3df0db58773caae31489834.jpg"
    @State var title = " Animal "
    var body: some View {
        ZStack{
            Image("wallpaper").ignoresSafeArea().scaledToFill()
            VStack{
                ImageSlider(
                                [
                                    "\(img1)",
                                    "\(img2)",
                                    "\(img3)"
                                    
                                ]
                                
                ).frame(width: 300, height: 300).border(.blue, width: 6).padding()
                Text(title).font(.system(size : 40)).padding().border(.cyan, width: 6)
                Spacer( ).frame(height: 60)
                
                HStack{
                    

                    
                    
                    Button(action: {
                            
                        img1 = "https://as1.ftcdn.net/v2/jpg/02/95/05/58/1000_F_295055844_1ZckStynPq6GkQKcdgtBvhfRM51fb4dS.jpg"
                        img2 = "https://i.guim.co.uk/img/media/993cc4a2107b870f78d1228874906ad9646fb204/0_144_2160_1296/master/2160.jpg?width=1200&height=900&quality=85&auto=format&fit=crop&s=461788c007e6d7bd47ee9aadce713637"
                        img3 = "https://worldbirds.com/wp-content/uploads/2020/05/snake-symbolism9.jpg"
                        title = "snake"
                        
            }, label: {
                Image("snake").resizable().frame(width: 100, height: 100).padding()
            })
                    
                    Spacer( ).frame(width: 20, height: 50)
                    
                    Button(action: {
                        img1 = "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/13/8c/f9/4d/pig-beach.jpg?w=1200&h=-1&s=1"
                        img2 = "https://c.files.bbci.co.uk/A46D/production/_123639024_gettyimages-1010564450.jpg"
                        img3 = "https://modernfarmer.com/wp-content/uploads/2014/03/smart_pig.jpg"
                        title = "pig"
            }, label: {
                Image("pig").resizable().frame(width: 155, height: 155)
            })
                    
                    
                }
                Spacer( ).frame(height: 70)
                HStack{
                    

                    
                    
                    Button(action: {
                            
                        img1 = "https://www.m-d.it/wp-content/uploads/2018/12/ratti-topi-881x587.jpg"
                        img2 = "https://derattizzazioni.org/wp-content/uploads/topo-selvatico.png"
                        img3 = "https://www.animalidacompagnia.it/wp-content/uploads/2018/08/topo-domestico-1.jpg"
                        title = "mouse"
                        
            }, label: {
                Image("mouse").frame(width: 50, height: 50).padding()
            })
                    
                    Spacer( ).frame(width: 90, height: 50)
                    
                    Button(action: {
                        img1 = "https://static.ohga.it/wp-content/uploads/sites/24/2020/06/rana-1200x1200.jpg"
                        img2 = "https://www.marinaosnaghi.com/wp-content/uploads/2021/01/Rana-bollita.jpg"
                        title = "frog"
                        img3 = "https://www.meteoweb.eu/wp-content/uploads/2022/02/rana-blu.jpg"
            }, label: {
                Image("frog").frame(width: 50, height: 50).padding()
            })
                    
                    
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
