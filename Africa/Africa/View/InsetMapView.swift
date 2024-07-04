//
//  InsetMapView.swift
//  Africa
//
//  Created by David Eduardo Batista on 03/07/24.
//

import SwiftUI
import MapKit

struct InsetMapView: View {
    
@State private var position = MapCameraPosition.region(MKCoordinateRegion(center: CLLocationCoordinate2DMake(6.600286, 16.4377599), span: MKCoordinateSpan(latitudeDelta: 60.0, longitudeDelta: 60.0)))
    
    var body: some View {
        Map(position: $position)
            .overlay(
                NavigationLink(destination: MapView()) {
                    HStack {
                        Image(systemName: "mappin.circle")
                            .foregroundStyle(.white)
                            .imageScale(.large)
                        
                        Text("Locations")
                            .foregroundStyle(Color.accentColor)
                            .fontWeight(.bold)
                    } //: HSTACK
                    .padding(.vertical, 10)
                    .padding(.horizontal, 14)
                    .background(
                        Color.black
                            .opacity(0.4)
                            .clipShape(RoundedRectangle(cornerRadius: 12))
                    )
                }
                .padding(12)
                , alignment: .topTrailing
            )
            .frame(height: 256)
            .clipShape(RoundedRectangle(cornerRadius: 12))
    }
}

#Preview {
    InsetMapView()
}
