//
//  PokemonDetailViewController.swift
//  PokemonCards
//
//  Created by parashar.r.adhikary on 09/02/2021.
//

import UIKit

class PokemonDetailViewController: UIViewController {

    var pokemon: Pokemon?
    
    @IBOutlet weak var pokemonImageView: UIImageView!
   
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        if let pokemon = pokemon {
            ImageController.getImage(for: pokemon.imageUrl ?? "") { (image) in
                self.pokemonImageView.image = image
            }
        }else{
            print("pokemon image is nil")
        }
    }
}

