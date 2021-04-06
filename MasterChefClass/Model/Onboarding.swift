//
//  Onboarding.swift
//  MasterChefClass
//
//  Created by Rodrigo de Anhaia on 31/03/21.
//

let tabs = [Page(staticImage: "Ativo 2", chefsImage: "Ativo 3", title: "BEM-VINDO!", text: "Aqui você poderá acompanhar o nosso cronograma e ter acesso a dicas e receitas exclusivas dos jurados mais queridos do Brasil!"),
            Page(staticImage: "Ativo 2", chefsImage: "Ativo 4", title: "RELEITURAS DAS FINAIS!", text: "Você também vai conferir as famosas receitas criadas pelos campeões, agora com um toque especial!"),
            Page(staticImage: "Ativo 2", chefsImage: "Ativo 5", title: "FAÇA PARTE DO MASTERCHEF!", text: "Além disso, você poderá se inscrever para a próxima edição do programa!")]

import Foundation

struct Page {
    let staticImage: String
    let chefsImage: String
    let title: String
    let text: String
}
