//
// Copyright © 2022 Swift Charts Examples.
// Open Source - MIT License

import SwiftUI
import Charts



struct CumulativeLineOverview: View {
    var body: some View {
        Chart {
            ForEach(LocationData.last7Days) { series in
                ForEach(series.sales, id: \.weekday) { element in
                    AreaMark(
                        x: .value("Day", element.weekday, unit: .day),
                        y: .value("Sales", element.sales)
                    
                    )
                    .accessibilityLabel("\(element.weekday.formatted())")
                    .accessibilityValue("\(element.sales)")
                    .foregroundStyle(by: .value("City", series.city))
                }
            }
        }
        .chartXAxis(.hidden)
        .chartYAxis(.hidden)
        .chartLegend(.hidden)
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
