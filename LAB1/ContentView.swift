import SwiftUI

struct ContentView: View {
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 16) {
                
                // MARK: - Header / Profile Section
                VStack(spacing: 12) {
                    Image(systemName: "person.circle.fill")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 100, height: 100)
                        .foregroundColor(.purple)
                        .padding(.top, 24)
                    
                    Text("Mohamed Lutfi")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .foregroundColor(.primary)
                    
                    HStack(spacing: 6) {
                        Image(systemName: "mappin.circle.fill")
                            .foregroundColor(.purple)
                        Text("Jönköping")
                            .font(.subheadline)
                            .foregroundColor(.secondary)
                    }
                }
                .frame(maxWidth: .infinity)
                .padding()
                .background(
                    RoundedRectangle(cornerRadius: 16)
                        .fill(Color(.systemGray6))
                )
                .padding(.horizontal)
                
                Divider()
                    .padding(.horizontal)
                
                // MARK: - Experience Section
                VStack(alignment: .leading, spacing: 12) {
                    Text("Experience & Education")
                        .font(.headline)
                        .foregroundColor(.purple)
                        .padding(.horizontal)
                    
                    ExperienceRow(name: "Jönköping University", years: "2023 - Present")
                    ExperienceRow(name: "High School", years: "2020 - 2023")
                    ExperienceRow(name: "Previous Workplace", years: "2022 - 2023")
                }
                .padding(.bottom, 24)
                
                Spacer()
            }
        }
    }
}

struct ExperienceRow: View {
    let name: String
    let years: String
    
    var body: some View {
        HStack {
            VStack(alignment: .leading, spacing: 4) {
                Text(name)
                    .font(.body)
                    .fontWeight(.medium)
                Text(years)
                    .font(.caption)
                    .foregroundColor(.secondary)
            }
            Spacer()
            Image(systemName: "chevron.right")
                .foregroundColor(.purple)
        }
        .padding()
        .background(
            RoundedRectangle(cornerRadius: 12)
                .fill(Color(.systemGray6))
        )
        .padding(.horizontal)
    }
}

#Preview {
    ContentView()
}
