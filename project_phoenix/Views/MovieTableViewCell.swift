//
//  MovieTableViewCell.swift
//  project_phoenix
//
//  Created by Erkin Gönültaş on 4.08.2023.
//

import UIKit

class MovieTableViewCell: UITableViewCell {

    static let identifier = "MovieTableViewCell"
    
    private let playButton: UIButton = {
       let button = UIButton()
        let image = UIImage(systemName: "play.circle", withConfiguration: UIImage.SymbolConfiguration(pointSize: 32))
        button.setImage(image, for: . normal)
        button.translatesAutoresizingMaskIntoConstraints = false
       return button
    }()
    
    private let movieTitle: UILabel = {
       let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
       return label
    }()
    
    private let moviePosterImageView : UIImageView = {
       let image = UIImageView()
        image.contentMode = .scaleAspectFit
        image.translatesAutoresizingMaskIntoConstraints = false
        image.clipsToBounds = true
        return image
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        contentView.addSubview(moviePosterImageView)
        contentView.addSubview(movieTitle)
        contentView.addSubview(playButton)
        applyConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
    
    private func applyConstraints(){
        let moviePosterImageViewConstraints = [
            moviePosterImageView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            moviePosterImageView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 15),
            moviePosterImageView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: 15),
            moviePosterImageView.widthAnchor.constraint(equalToConstant: 100)
        ]
        
        let movieTitleConstraints = [
            movieTitle.leadingAnchor.constraint(equalTo: moviePosterImageView.trailingAnchor, constant: 20),
            movieTitle.centerYAnchor.constraint(equalTo: contentView.centerYAnchor),
        ]
        
        let playButtonConstraints = [
            playButton.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -20),
            playButton.centerYAnchor.constraint(equalTo: contentView.centerYAnchor),
        ]
        
        NSLayoutConstraint.activate(moviePosterImageViewConstraints)
        NSLayoutConstraint.activate(movieTitleConstraints)
        NSLayoutConstraint.activate(playButtonConstraints)
    }
    
    public func configure(with model: MovieViewModel){
        guard let url = URL(string: model.posterURL) else {return}
        moviePosterImageView.sd_setImage(with: url, completed: nil)
        movieTitle.text = model.movieTitle
                
    }

}
