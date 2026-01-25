//
//  ContentView.swift
//  SwiftHome
//
//  Created by Harjot singh on 06/01/26.
//

import SwiftUI
import AVFAudio
struct ContentView: View {
    @State private var message = ""
    @State private var image = "image0"
    @State private var lastImageNumber = -1
    @State var lastmessagenumber = -1
    @State var audioPlayer: AVAudioPlayer!
    @State var lastsoundnumber = -1
    @State var selectedstate = true
    var body: some View {
        VStack {
            
            
            Text(message)
                .foregroundColor(.red)
                .font(.largeTitle)
                .fontWeight(.bold)
            Spacer()
            Image(image)
                .resizable()
                .scaledToFit()
                .clipShape(RoundedRectangle(cornerRadius: 30))
                .frame(width: 400, height: 500)
            
            Spacer()
            HStack{
                
                Button("Press me") {
                    let quotes = ["You are Awesome", "You are Great", "Fantastic"]
                    
                    var imagenumber = Int.random(in: 0...9)
                    
                    while(imagenumber == lastImageNumber){
                        imagenumber = Int.random(in: 0...9)
                    }
                    
                    
                    image = "image\(imagenumber)"
                    lastImageNumber = imagenumber
                    var messagenumber = Int.random(in: 0...quotes.count-1)
                    while (messagenumber == lastmessagenumber){
                        messagenumber = Int.random(in: 0...quotes.count-1)
                    }
                    message = quotes[messagenumber]
                    lastmessagenumber = messagenumber
                    if (selectedstate == true){
                        var soundnumber = Int.random(in: 0...5)
                        
                        
                        while (soundnumber == lastsoundnumber){
                            soundnumber = Int.random(in: 0...5)
                        }
                        let soundname = "sound\(soundnumber)"
                        lastsoundnumber = soundnumber
                        guard let soundfile = NSDataAsset(name: soundname)else{
                            print("couldn't play sound")
                            return
                        }
                        do {
                            audioPlayer = try AVAudioPlayer(data: soundfile.data)
                            audioPlayer.play()
                        }
                        catch{
                            print("error occur in file")
                        }
                    }
                 
                }
                Spacer()
                Text("sound is on:")
                Toggle("sound on", isOn: $selectedstate).labelsHidden()
                
            }
            .foregroundStyle(.black)
            .buttonStyle(.bordered)
            .tint(.blue)
            .font(.title3)
            Spacer()
        }
        .padding()
        
    }
}

#Preview {
    ContentView()
}
