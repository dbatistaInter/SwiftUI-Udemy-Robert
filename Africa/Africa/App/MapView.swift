//
//  MapView.swift
//  Africa
//
//  Created by David Eduardo Batista on 02/07/24.
//

import SwiftUI
import MapKit

struct MapView: View {
    @State private var position : MapCameraPosition = {
        
        let mapCoordinates = CLLocationCoordinate2D(latitude: 6.600286, longitude: 16.4377599)
        let mapZoomLavel = MKCoordinateSpan(latitudeDelta: 70.0, longitudeDelta: 70.0)
        let mapRegion = MKCoordinateRegion(center: mapCoordinates, span: mapZoomLavel)
        let mapCamearaPositionRegion = MapCameraPosition.region(mapRegion)
        
        return mapCamearaPositionRegion
    }()
    
    @State private var region: MKCoordinateRegion = {
        let mapCoordinates = CLLocationCoordinate2D(latitude: 6.600286, longitude: 16.4377599)
        let mapZoomLavel = MKCoordinateSpan(latitudeDelta: 70.0, longitudeDelta: 70.0)
        let mapRegion = MKCoordinateRegion(center: mapCoordinates, span: mapZoomLavel)
        return mapRegion
    }()
    
    let locations: [NationalParkLocation] = Bundle.main.decode("locations.json")
    
    var body: some View {
        //:MARK: - 1 BASIC MAP
        // Map(position: $position)
        //:MARK: - 2 ADVANCE MAP
        Map(coordinateRegion: $region, annotationItems: locations, annotationContent: { item in
            
            // (A) PIN: OLD STYLE (always static)
            //MapPin(coordinate: item.location, tint: .accent)
            
            // (B) MARKER: NEW STYLE ** (always static)
            //MapMarker(coordinate: item.location, tint: .accent)
            
            // (C) CUSTOM BASICO ANNOTATION (it could be interactive)
            // MapAnnotation(coordinate: item.location) {
            //     Image("logo")
            //         .resizable()
            //         .scaledToFit()
            //         .frame(width: 32, height: 32, alignment: .center)
            // }
            
            // (D) CUSTOM ADVANCED ANNOTATION (it could be interactive)
            MapAnnotation(coordinate: item.location) {
                MapAnnotationView(location: item)
            }
            
        })
        .overlay(
            HStack {
                Image("compass")
                    .resizable()
                    .scaledToFit()
                .frame(width: 48, height: 48, alignment: .center)
                VStack(alignment:.leading, spacing: 3) {
                    HStack {
                        Text("Latitude")
                            .font(.footnote)
                            .fontWeight(.bold)
                            .foregroundStyle(.accent)
                        Spacer()
                        Text("\(region.center.latitude)")
                            .font(.footnote)
                            .foregroundStyle(.white)
                    }
                    Divider()
                    HStack {
                        Text("Longitude")
                            .font(.footnote)
                            .fontWeight(.bold)
                            .foregroundStyle(.accent)
                        Spacer()
                        Text("\(region.center.longitude)")
                            .font(.footnote)
                            .foregroundStyle(.white)
                    }
                }
            }
                .padding(.vertical, 12)
                .padding(.horizontal, 16)
                .background(
                    Color.black
                        .clipShape(RoundedRectangle(cornerRadius: 8))
                        .opacity(0.6)
                )
                .padding()
            , alignment: .top
        )
        
    }
}

#Preview {
    MapView()
}
