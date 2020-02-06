import SwiftUI

struct Colaborateur: View {
    
    var body: some View {
        
                VStack (spacing: 40) {
                    VStack{
                        HStack{
                            Image("images")
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .clipShape(Circle())
                                .frame(width: 150.0, height:160.0)
                        }
                        
                        VStack(spacing: 10) {
                            HStack{
                                Text("Elisa")
                                    .font(.headline)
                                    .fontWeight(.bold)
                                Text("SIMPLON.CO")
                                    .font(.headline)
                                    .fontWeight(.bold)
                            }
                            HStack{
                                Text("SIMPLON")
                                    .font(.headline)
                                    .fontWeight(.bold)
                            }
                        }
                        HStack {
                            Image(systemName: "envelope")
                            Text(" ")
                            Image(systemName: "phone.arrow.up.right")
                            Text(" ")
                            Image(systemName: "message")
                            Text(" ")
                            Image(systemName: "phone.circle")
                        }
                    }
                    
                    VStack(spacing: 40) {
                        Form{
                            HStack{
                                Text("Entreprise")
                                .fontWeight(.semibold)
                                Spacer()
                                Text("Simplon")
                            }
                            HStack{
                                Text("Téléphone")
                                .fontWeight(.semibold)
                                Spacer()
                                Text("+336 265 344 60")
                            }
                            HStack{
                                Text("Email")
                                .fontWeight(.semibold)
                                Spacer()
                                Text("elisa@simplon.com")
                            }
                            HStack{
                                Text("Adresse")
                                .fontWeight(.semibold)
                                Spacer()
                                Text("55 rue de vincennes, \r 94500 Montreuil")
                                    .multilineTextAlignment(.trailing)
                            }
                            Spacer()
                            
                            VStack(alignment: .leading){
                               
                                    Text("Note")
                                        .font(.headline)
                                        .fontWeight(.semibold)
                                    Text("Projet Apple Fondation 2019 Terminer, contrat Apple Fondation 2020 en cours.")
                                    .padding(.bottom, 100.0)
                            }
                        }
                    }
                    .padding()
                }.navigationBarTitle("Colaborateur", displayMode: .inline)
                .navigationBarItems(trailing: Text("Valider"))
            
        
    }
}

struct Colaborateur_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            Colaborateur()
        }
    }
}

