//
//  ContentView.swift
//  DiscGolfRB2.0
//
//  Created by Breshears, Rob - CTC on 10/28/25.
//

import SwiftUI
import MapKit

struct ContentView: View {
    
    let holeNum: [Int] = [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18]
    
    let teeLat: [Double] = [
        40.5564509,
        40.5566772,
        40.5571974,
        40.55753,
        40.55776,
        40.55770,
        40.55781,
        40.55834,
        40.55882,
        40.558376,
        40.558885,
        40.559379,
        40.558914,
        40.559697,
        40.560616,
        40.560543,
        40.558889,
        40.558345
    ]
    
    let teeLong: [Double] = [
        -105.1390831,
         -105.1375496,
         -105.1357486,
         -105.13584,
         -105.13708,
         -105.13526,
         -105.13455,
         -105.13627,
         -105.13707,
         -105.135466,
         -105.134107,
         -105.134151,
         -105.135949,
         -105.135522,
         -105.134974,
         -105.136820,
         -105.137061,
         -105.139454
    ]
    
    let bsktLat : [Double] = [
        40.5565559,
        40.5569357,
        40.5570549,
        40.55746,
        40.55788,
        40.55753,
        40.55838,
        40.55845,
        40.55858,
        40.558763,
        40.559135,
        40.559030,
        40.559783,
        40.560467,
        40.560337,
        40.559436,
        40.558592,
        40.557291
    ]
    
    let bsktLong : [Double] = [
        -105.1379600,
         -105.1367495,
         -105.1347512,
         -105.13697,
         -105.13545,
         -105.13420,
         -105.13588,
         -105.13754,
         -105.13565,
         -105.134242,
         -105.134385,
         -105.135471,
         -105.135804,
         -105.134485,
         -105.136424,
         -105.137056,
         -105.139183,
         -105.139472
    ]
    
    let distance: [Int] =
    [
        318, 480, 308, 415, 449, 294, 426, 358, 404, 339, 276, 387, 322, 403, 415, 408, 614, 386
    ]
    
    @State var camera: MapCameraPosition = .automatic
    
    @State var zoomed: Bool = false
    
    @State var start: Bool = true
    
    @State var index: Int = 0
    
    @State var holeScore: Int = 0
    
    @State var holeScores: [Int] = []
    
    @State var totalScore: Int = 0
    
    @State var scoreSheet: Bool = false
    
    @State var mapStyle: String = "hybrid"
    
    var body: some View {
        Map(position: $camera) {
            //Hole 1
            Marker("1", monogram: Text("1"), coordinate: CLLocationCoordinate2D(latitude: teeLat[0], longitude: teeLong[0]))
                .tint(.blue)
            Marker("1", systemImage: "flag.fill", coordinate: CLLocationCoordinate2D(latitude: bsktLat[0], longitude: bsktLong[0]))
            //Hole 2
            Marker("2", monogram: Text("2"),coordinate: CLLocationCoordinate2D(latitude: teeLat[1], longitude: teeLong[1]))
                .tint(.blue)
            Marker("2", systemImage: "flag.fill", coordinate: CLLocationCoordinate2D(latitude: bsktLat[1], longitude: bsktLong[1]))
            //Hole 3
            Marker("3", monogram: Text("3"),coordinate: CLLocationCoordinate2D(latitude: teeLat[2], longitude: teeLong[2]))
                .tint(.blue)
            Marker("3", systemImage: "flag.fill", coordinate: CLLocationCoordinate2D(latitude: bsktLat[2], longitude: bsktLong[2]))
            //Hole 4
            Marker("4", monogram: Text("4"),coordinate: CLLocationCoordinate2D(latitude: teeLat[3], longitude: teeLong[3]))
                .tint(.blue)
            Marker("4", systemImage: "flag.fill", coordinate: CLLocationCoordinate2D(latitude: bsktLat[3], longitude: bsktLong[3]))
            //Hole 5
            Marker("5", monogram: Text("5"),coordinate: CLLocationCoordinate2D(latitude: teeLat[4], longitude: teeLong[4]))
                .tint(.blue)
            Marker("5", systemImage: "flag.fill", coordinate: CLLocationCoordinate2D(latitude: bsktLat[4], longitude: bsktLong[4]))
            //Hole 6
            Marker("6", monogram: Text("6"),coordinate: CLLocationCoordinate2D(latitude: teeLat[5], longitude: teeLong[5]))
                .tint(.blue)
            Marker("6", systemImage: "flag.fill", coordinate: CLLocationCoordinate2D(latitude: bsktLat[5], longitude: bsktLong[5]))
            //Hole 7
            Marker("7", monogram: Text("7"),coordinate: CLLocationCoordinate2D(latitude: teeLat[6], longitude: teeLong[6]))
                .tint(.blue)
            Marker("7", systemImage: "flag.fill", coordinate: CLLocationCoordinate2D(latitude: bsktLat[6], longitude: bsktLong[6]))
            //Hole 8
            Marker("8", monogram: Text("8"),coordinate: CLLocationCoordinate2D(latitude: teeLat[7], longitude: teeLong[7]))
                .tint(.blue)
            Marker("8", systemImage: "flag.fill", coordinate: CLLocationCoordinate2D(latitude: bsktLat[7], longitude: bsktLong[7]))
            //Hole 9
            Marker("9", monogram: Text("9"),coordinate: CLLocationCoordinate2D(latitude: teeLat[8], longitude: teeLong[8]))
                .tint(.blue)
            Marker("9", systemImage: "flag.fill", coordinate: CLLocationCoordinate2D(latitude: bsktLat[8], longitude: bsktLong[8]))
            //Hole 10
            Marker("10", monogram: Text("10"),coordinate: CLLocationCoordinate2D(latitude: teeLat[9], longitude: teeLong[9]))
                .tint(.blue)
            Marker("10", systemImage: "flag.fill", coordinate: CLLocationCoordinate2D(latitude: bsktLat[9], longitude: bsktLong[9]))
            //Hole 11
            Marker("11", monogram: Text("11"),coordinate: CLLocationCoordinate2D(latitude: teeLat[10], longitude: teeLong[10]))
                .tint(.blue)
            Marker("11", systemImage: "flag.fill", coordinate: CLLocationCoordinate2D(latitude: bsktLat[10], longitude: bsktLong[10]))
            //Hole 12
            Marker("12", monogram: Text("12"),coordinate: CLLocationCoordinate2D(latitude: teeLat[11], longitude: teeLong[11]))
                .tint(.blue)
            Marker("12", systemImage: "flag.fill", coordinate: CLLocationCoordinate2D(latitude: bsktLat[11], longitude: bsktLong[11]))
            //Hole 13
            Marker("13", monogram: Text("13"),coordinate: CLLocationCoordinate2D(latitude: teeLat[12], longitude: teeLong[12]))
                .tint(.blue)
            Marker("13", systemImage: "flag.fill", coordinate: CLLocationCoordinate2D(latitude: bsktLat[12], longitude: bsktLong[12]))
            //Hole 14
            Marker("14", monogram: Text("14"),coordinate: CLLocationCoordinate2D(latitude: teeLat[13], longitude: teeLong[13]))
                .tint(.blue)
            Marker("14", systemImage: "flag.fill", coordinate: CLLocationCoordinate2D(latitude: bsktLat[13], longitude: bsktLong[13]))
            //Hole 15
            Marker("15", monogram: Text("15"),coordinate: CLLocationCoordinate2D(latitude: teeLat[14], longitude: teeLong[14]))
                .tint(.blue)
            Marker("15", systemImage: "flag.fill", coordinate: CLLocationCoordinate2D(latitude: bsktLat[14], longitude: bsktLong[14]))
            //Hole 16
            Marker("16", monogram: Text("16"),coordinate: CLLocationCoordinate2D(latitude: teeLat[15], longitude: teeLong[15]))
                .tint(.blue)
            Marker("16", systemImage: "flag.fill", coordinate: CLLocationCoordinate2D(latitude: bsktLat[15], longitude: bsktLong[15]))
            //Hole 17
            Marker("17", monogram: Text("17"),coordinate: CLLocationCoordinate2D(latitude: teeLat[16], longitude: teeLong[16]))
                .tint(.blue)
            Marker("17", systemImage: "flag.fill", coordinate: CLLocationCoordinate2D(latitude: bsktLat[16], longitude: bsktLong[16]))
            //Hole 18
            Marker("18", monogram: Text("18"),coordinate: CLLocationCoordinate2D(latitude: teeLat[17], longitude: teeLong[17]))
                .tint(.blue)
            Marker("18", systemImage: "flag.fill", coordinate: CLLocationCoordinate2D(latitude: bsktLat[17], longitude: bsktLong[17]))
            
        }
        .mapStyle(.hybrid)
        
        //Top Banner
        .safeAreaInset(edge: .top) {
            HStack {
                Spacer()
                Image(systemName: "flag.circle.fill")
                Text("Aggie Greens Disc Golf")
                    .font(.largeTitle.lowercaseSmallCaps())
                Spacer()
                Circle()
                    .frame(width: 80, height: 80)
                    //.offset(y: 40)
                    .overlay {
                        Text("\(totalScore)")
                            .font(.largeTitle.lowercaseSmallCaps())
                            .foregroundStyle(.blue)
                    }
                Button{
                    scoreSheet.toggle()
                } label: {
                    Image(systemName: "pencil.and.list.clipboard")
                }
                .padding()
                Button {
                    camera = .automatic
                    index = 0
                } label: {
                    Image(systemName: "map.circle")
                }
                .padding()

            }
            .padding(.bottom)
            .font(.largeTitle)
            .foregroundStyle(.white)
            .background(.blue)
            .opacity(0.7)
        }
        
        
        
        
        //Bottom Banner
        .safeAreaInset(edge: .bottom, spacing: 100) {
            
            
            HStack {
                Button {
                    print("Back button pressed")
                    lastHole()
                } label: {
                    Image(systemName: "lessthan.circle")
                        .font(.largeTitle)
                        .foregroundStyle(.blue)
                }
                .disabled(index == 0)
                
                VStack(alignment: .leading) {
                    Text("Hole \(index + 1)")
                        .font(.largeTitle.lowercaseSmallCaps())
                    HStack{
                        Text("\(distance[index]) ft")
                            .font(.subheadline)
                        Text("Par 3")
                    }
                }
                Spacer()
                    Button {
                        //Score -1
                        holeScore -= 1
                    } label: {
                        Text("-1")
                           .padding(20)
                           .font(.title.lowercaseSmallCaps())
                    }
                    .buttonStyle(.bordered)
                    Spacer()
                    Button {
                        //Score +1
                        holeScore += 1
                    } label: {
                        Text("+1")
                            .padding(20)
                            .font(.title.lowercaseSmallCaps())
                    }
                    .buttonStyle(.bordered)
                Spacer()
                Spacer()
                VStack {
                    Text("Score for hole:")
                    HStack {
                        Circle()
                            .frame(width: 60, height: 60)
                            .overlay {
                                Text("\(holeScore)")
                                    .font(.largeTitle.lowercaseSmallCaps())
                                    .foregroundStyle(.white)
                            }
                        
                            .foregroundStyle(holeScore < 3 ? .green: (holeScore == 3 ? .blue: .red))
                        Button {
                            totalScore += holeScore
                            
                            holeScores.append(holeScore)
                            
                            holeScore = 0
                        } label :
                        {
                            Text("Save")
                                .padding()
                                .font(.title.lowercaseSmallCaps())
                        }
                        .buttonStyle(.borderedProminent)
                    }
                }
                .font(.title.lowercaseSmallCaps())
                Spacer()
                Button {
                        nextHole()
                    
                } label: {
                    Image(systemName: "greaterthan.circle")
                        .font(.largeTitle)
                        .foregroundStyle(.blue)
                }
            }
                .padding(60)
                .background(.thinMaterial)
            
            

        }
        .sheet(isPresented: $start) {
            VStack {
                Spacer()
                Text("Welcome to Aggie Greens \nDisc Golf Course!")
                    .font(.largeTitle.lowercaseSmallCaps())
                Spacer()
                Button("Start") {
                    start = false
                    camera = .region(MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: (teeLat[index]+bsktLat[index])/2, longitude: (teeLong[index]+bsktLong[index])/2), latitudinalMeters: 120, longitudinalMeters: 120))
                }
                .font(.largeTitle)
                .buttonStyle(.bordered)
                Spacer()
            }
        }
        
        .sheet(isPresented: $scoreSheet) {
            VStack {
                List {
                    ForEach(holeScores, id: \.self) { score in
                        Text("Hole   \(holeScores.firstIndex(of: score)! + 1):    \(score)")
                            .foregroundStyle(holeScore < 3 ? .green: (holeScore == 3 ? .blue: .red))
                    }
                }
                Button(action: {
                    scoreSheet.toggle()
                }) {
                    Image(systemName: "xmark.circle.fill")
                }
                
            }
        }
        

    
    }
    
    func nextHole() {
        if index == 17 {
            index = 17
        } else {
            index += 1
        }
        
        camera = .region(MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: (teeLat[index]+bsktLat[index])/2, longitude: (teeLong[index]+bsktLong[index])/2), latitudinalMeters: 120, longitudinalMeters: 120))

    }
    
    func lastHole() {
        if index == 0 {
            index = 0
        } else {
            index -= 1
        }
        camera = .region(MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: (teeLat[index]+bsktLat[index])/2, longitude: (teeLong[index]+bsktLong[index])/2), latitudinalMeters: 120, longitudinalMeters: 120))
    }
}

#Preview {
    ContentView()
}


