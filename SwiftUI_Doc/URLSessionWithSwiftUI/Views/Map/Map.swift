//
//  Map.swift
//  SwiftUI_Doc
//
//  Created by koji torishima on 2020/03/10.
//  Copyright © 2020 koji torishima. All rights reserved.
//

import SwiftUI
import MapKit

struct MapVeiw: UIViewRepresentable {
    
    let eventData: Event!
    
    func makeUIView(context: Context) -> MKMapView {
        let mapView = MKMapView(frame: .zero)
        return mapView
    }
    
    func updateUIView(_ uiView: MKMapView, context: UIViewRepresentableContext<MapVeiw>) {
        let center = CLLocationCoordinate2DMake(Double(eventData.lat)!,Double(eventData.lon)!)
        let span = MKCoordinateSpan(latitudeDelta: 0.005, longitudeDelta: 0.005)
        let region = MKCoordinateRegion(center: center, span: span)
        uiView.setRegion(region, animated: true)
        uiView.userTrackingMode = .follow
        
        let category: [MKPointOfInterestCategory] = [.parking, .publicTransport]
        let filter = MKPointOfInterestFilter(including: category)
        uiView.pointOfInterestFilter = filter
        
        let annotation = MKPointAnnotation()
        annotation.coordinate = center
        annotation.title = "ここです"
        annotation.subtitle = eventData.place
        uiView.addAnnotation(annotation)
        
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapVeiw(eventData: mockEventsData.first)
    }
}
