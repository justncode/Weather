//
//  HomeController.swift
//  Weather
//
//  Created by Justin on 4/3/20.
//  Copyright © 2020 justncode LLC. All rights reserved.
//

import UIKit

class HomeController: UIViewController {

    private let viewModel = HomeViewModel()
    
    @IBOutlet weak var temperatureLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var feelsLikeLabel: UILabel!
    @IBOutlet weak var minTemperatureLabel: UILabel!
    @IBOutlet weak var maxTemperatureLabel: UILabel!
    @IBOutlet weak var pressureLabel: UILabel!
    @IBOutlet weak var humidityLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        viewModel.fetchWeather { [weak self] in
            DispatchQueue.main.async {
                self?.setupUI()
            }
        }
    }

    private func setupUI() {
        setupHeader()
        setupSubheader()
    }
    
    private func setupHeader() {
        temperatureLabel.text = viewModel.temperatureString
        nameLabel.text = viewModel.nameString
    }

    private func setupSubheader() {
        feelsLikeLabel.text = viewModel.feelsLikeTemperatureString
        minTemperatureLabel.text = viewModel.minTemperatureString
        maxTemperatureLabel.text = viewModel.maxTemperatureString
        pressureLabel.text = viewModel.pressureString
        humidityLabel.text = viewModel.humidityString
    }
}

