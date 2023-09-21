//
//  ViewController.swift
//  10-ReadableContentGuides
//
//  Created by Mariano Martin Battaglia on 17/04/2023.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
    }

    func setupViews() {
        let label = makeLabel(withText: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce vulputate ex id enim ornare feugiat. Cras vestibulum, ipsum at commodo egestas, ipsum augue tincidunt purus, eget mattis mauris eros vel purus. Vivamus iaculis consequat ex at porta. Nulla facilisi. Mauris sem nulla, placerat sed tellus vitae, semper scelerisque ex. Vestibulum vitae ultrices ipsum, vel cursus erat. Suspendisse sit amet elit vel lacus lacinia rhoncus. Nulla malesuada pretium magna, et vestibulum ligula gravida id. Vivamus in dapibus lacus. Vivamus eu sem sit amet lectus scelerisque scelerisque nec at ante. Quisque semper velit mi, a placerat ligula porta nec. Proin eleifend sapien eget hendrerit blandit. Pellentesque dignissim, magna non vulputate semper, risus dolor condimentum nisi, et dictum sem nisl eu ex. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce vulputate ex id enim ornare feugiat. Cras vestibulum, ipsum at commodo egestas, ipsum augue tincidunt purus, eget mattis mauris eros vel purus. Vivamus iaculis consequat ex at porta. Nulla facilisi. Mauris sem nulla, placerat sed tellus vitae, semper scelerisque ex. Vestibulum vitae ultrices ipsum, vel cursus erat. Suspendisse sit amet elit vel lacus lacinia rhoncus. Nulla malesuada pretium magna, et vestibulum ligula gravida id. Vivamus in dapibus lacus. Vivamus eu sem sit amet lectus scelerisque scelerisque nec at ante. Quisque semper velit mi, a placerat ligula porta nec. Proin eleifend sapien eget hendrerit blandit. Pellentesque dignissim, magna non vulputate semper, risus dolor condimentum nisi, et dictum sem nisl eu ex.")
        
        view.addSubview(label)
        
        /// "readableContentGuide" vs "layoutMarginsGuide"
        /// The difference is in "readableContentGuide" landscape was different margins (more tick) for better reading.
        NSLayoutConstraint.activate([
            label.topAnchor.constraint(equalTo: view.readableContentGuide.topAnchor),
            label.leadingAnchor.constraint(equalTo: view.readableContentGuide.leadingAnchor),
            label.trailingAnchor.constraint(equalTo: view.readableContentGuide.trailingAnchor),
            label.bottomAnchor.constraint(equalTo: view.readableContentGuide.bottomAnchor)
        ])
    }
    
    func makeLabel(withText text: String) -> UILabel {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = text
        label.backgroundColor = .yellow
        label.numberOfLines = 0
        label.font = UIFont.systemFont(ofSize: 20)
        
        return label
    }
}
