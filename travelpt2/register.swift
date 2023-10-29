import SwiftUI

struct registerPage: View {
    @State private var name: String = ""
    @State private var pass: String = ""
    let registry = Registry()
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
                    
                    registry.addUser(Person(name: name, password: pass))
                    print(registry.printRegistered())

                }, label: {
                    Text("Register!")
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

struct register_Previews: PreviewProvider {
    static var previews: some View {
        firstPage()
    }
}
