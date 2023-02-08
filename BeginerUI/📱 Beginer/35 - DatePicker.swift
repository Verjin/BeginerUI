import SwiftUI

struct DatePickerUI: View {
    
    // #1
    @State var selectedDate: Date = Date()
    
    let startingDate: Date = Calendar.current.date(from: DateComponents(year: 2018, day: 25)) ?? Date()
    let endingDate: Date = Date()
    
    var dateFormatter: DateFormatter {
        let formatter = DateFormatter()
        formatter.dateStyle = .long
//        formatter.timeStyle = .long
        return formatter
    }
    
    // #2
    private let dateRange: ClosedRange<Date> = {
        let calendar = Calendar.current
        let minAgeDate = calendar.date(byAdding: .year, value: -120, to: .now)
        let maxAgeDate = calendar.date(byAdding: .year, value: -18, to: .now)
        
        return minAgeDate!...maxAgeDate!
    } ()

    @State private var selectedDateX: Date = .now
    
    var body: some View {
        VStack {
            Text("SELECTED DATE IS:")
            Text(dateFormatter.string(from: selectedDate))
//            Text(selectedDate, style: .date)
                .font(.headline).bold()
            
            // #1
            DatePicker(selection: $selectedDate, in: startingDate...endingDate, displayedComponents: .date) {
                Label("DATE", systemImage: "square.and.arrow.up")
                    .labelsHidden()
                
            }
            .padding()
            // #2
            Form{
                DatePicker(selection: $selectedDateX, in: dateRange, displayedComponents: [.date]) {
                    Label("DATE", systemImage: "touchid")
                }
                Text(selectedDate, style: .date)
            }
        }
    }
}

struct DatePickerUI_Previews: PreviewProvider {
    static var previews: some View {
        DatePickerUI()
    }
}
