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
    
    @State var camera: MapCameraPosition = .automatic
    
    @State var zoomed: Bool = false
    
    @State var index: Int = 0
    
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
            
        }
        .mapStyle(.standard)
        
        //Top Banner
        .safeAreaInset(edge: .top) {
            HStack {
                Image(systemName: "flag.circle.fill")
                Text("Aggie Greens Disc Golf")
                    .fontDesign(.rounded)
                    .font(.largeTitle)
            }
        }
        
        
        
        
        //Bottom Banner
        .safeAreaInset(edge: .bottom) {
                HStack {
                    Button {
                        //Code
                        camera = .region(MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: (teeLat[0]+bsktLat[0])/2, longitude: (teeLong[0]+bsktLong[0])/2), latitudinalMeters: 150, longitudinalMeters: 150))
                    } label: {
                        Text("1")
                            .font(.largeTitle)
                            .padding()
                    }
                    Button {
                        //Score -1
                    } label: {
                        Text("-1")
                    }
                    
                    Button {
                        //Score +1
                    } label: {
                        Text("+1")
                    }
            }
            .background(.thinMaterial)
            
            

        }
        

    
    }
}

#Preview {
    ContentView()
}


