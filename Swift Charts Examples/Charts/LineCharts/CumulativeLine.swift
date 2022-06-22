//
// Copyright © 2022 Swift Charts Examples.
// Open Source - MIT License

import SwiftUI
import Charts



struct CumulativeLineOverview: View {
    var body: some View {
        Chart(SalesData.last30Days, id: \.day) {
            AreaMark(
                x: .value("Day", $0.day, unit: .day),
                y: .value("Sales", $0.sales)
            )
            .interpolationMethod(.cardinal)
            .foregroundStyle(Color.blue.gradient)
        }
        .chartXAxis(.hidden)
        .chartYAxis(.hidden)
        .frame(height: Constants.previewChartHeight)
        
    }
    
    
}


struct CumulativeLine: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct CumulativeLine_Previews: PreviewProvider {
    static var previews: some View {
        CumulativeLineOverview()
    }
}
