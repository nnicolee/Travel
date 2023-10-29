import SwiftUI

struct firstPage: View {
    @State private var name: String = ""
    @State private var pass: String = ""
    @State private var isShowingAlert = false

    var body: some View {
        VStack(alignment: .leading) {
            Text("Login")
                .font(.largeTitle)
                .fontWeight(.bold)
                .padding(.horizontal)
                .padding(.vertical)

            Form {

                TextField("Name: ", text: $name)
                    .padding()
                    .background(Color(.systemGroupedBackground))
                    .cornerRadius(15)
                    .font(.title3)
                    .fontWeight(.bold)
                    .listRowSeparator(.hidden)

                TextField("Password: ", text: $pass)
                    .padding()
                    .background(Color(.systemGroupedBackground))
                    .cornerRadius(15)
                    .font(.title3)
                    .fontWeight(.bold)
                    .listRowSeparator(.hidden)

                Button(action: {
                    print("here")
                    print(registry.printRegistered())
                    print(registry.checkRegistered(nameInput: name, passInput: pass))
                    if registry.checkRegistered(nameInput: name, passInput: pass) {
                        print("Login!")
                    } else {
                        // User is not registered, show a popup
                        isShowingAlert = true
                    }

                }, label: {
                    Text("Login!")
                })
                .padding()
                .frame(maxWidth: .infinity)
                .background(Color.black.cornerRadius(10))
                .foregroundColor(.white)
                .font(.headline)
                .disabled(name.isEmpty || pass.isEmpty)
            }
            .scrollContentBackground(.hidden)
            .alert(isPresented: $isShowingAlert) {
                Alert(
                    title: Text("User Not Registered"),
                    message: Text("You need to register before logging in."),
                    dismissButton: .default(Text("OK"))
                )
            }
        }
    }
}

struct firstPage_Previews: PreviewProvider {
    static var previews: some View {
        firstPage()
    }
}
