//
//  LoginPageViewViewController.swift
//  Shieldsy
//
//  Created by Nick Shields on 2020-04-07.
//  Copyright © 2020 Nick Shields. All rights reserved.
//

import UIKit

class LoginPageViewViewController: UIPageViewController {
    
    required init?(coder aDecoder: NSCoder) {
        super.init(transitionStyle: .scroll, navigationOrientation: .horizontal, options: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("loaded page view controller!")
        dataSource = self
        
        if let firstViewController = orderedViewControllers.first {
            setViewControllers([firstViewController], direction: .forward, animated: true, completion: nil)
        }
    }
    
    private(set) lazy var orderedViewControllers: [UIViewController] = {
        return [self.blackViewController(), self.blueViewController(), self.greenViewController() ]
    }()
    
    private func blackViewController() -> UIViewController {
        let viewController = UIViewController()
        
        //Mark: Testing view shadow.. not working..
//        viewController.view.layer.shadowColor = UIColor.black.cgColor
//        viewController.view.layer.shadowOpacity = 50
//        viewController.view.layer.shadowOffset = .zero
//        viewController.view.layer.shadowRadius = 10
        //viewController.view.backgroundColor = .green
        
        //MARK: Creating a Stack View for a title
        
        let imageView = UIImageView()
        imageView.backgroundColor = .blue
        imageView.heightAnchor.constraint(equalToConstant: 120.0).isActive = true
        imageView.widthAnchor.constraint(equalToConstant: 120.0).isActive = true
        
        let textLabel = UILabel()
        textLabel.widthAnchor.constraint(equalToConstant: viewController.view.frame.width).isActive = true
        textLabel.heightAnchor.constraint(equalToConstant: 100.0).isActive = true
        textLabel.text = "Community"
        textLabel.font = UIFont(name: Fonts.robotoMedium, size: 48.0)
        textLabel.textColor = .white
        textLabel.textAlignment = .center
        
        let info1 = UILabel()
        info1.widthAnchor.constraint(equalToConstant: viewController.view.frame.width).isActive = true
        info1.heightAnchor.constraint(equalToConstant: 300.0).isActive = true
        info1.numberOfLines = 0
        info1.text = "Join Now\n I wonder if this works"
        info1.font = UIFont(name: Fonts.robotoRegular, size: 24.0)
        info1.textColor = .white
        info1.textAlignment = .center
        

        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.distribution = .equalSpacing
        stackView.alignment = .center
        stackView.spacing = 16.0
        
        stackView.addArrangedSubview(textLabel)
        stackView.addArrangedSubview(info1)
        //stackView.addArrangedSubview(imageView)
        
        stackView.translatesAutoresizingMaskIntoConstraints = false
        //stackView.bounds = self.view.bounds
        viewController.view.addSubview(stackView)
        stackView.centerXAnchor.constraint(equalTo: viewController.view.centerXAnchor).isActive = true
        
        //stackView.centerYAnchor.constraint(equalTo: viewController.view.centerYAnchor).isActive = true
        //appTitle.text = "Shieldsy"
        
        
        
        
        
        
        return viewController
    }
    private func blueViewController() -> UIViewController {
        let viewController = UIViewController()
        viewController.view.backgroundColor = .clear
        return viewController
    }
    private func greenViewController() -> UIViewController {
        let viewController = UIViewController()
        viewController.view.backgroundColor = .clear
        return viewController
    }

}

extension LoginPageViewViewController: UIPageViewControllerDataSource {
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
        
        guard let viewControllerIndex = orderedViewControllers.firstIndex(where: {$0 === viewController}) else {
            return nil
        }
        
        let previousIndex = viewControllerIndex - 1
        let orderedViewControllersCount = orderedViewControllers.count
        
        guard previousIndex >= 0 else {
            return orderedViewControllers.last
        }
        
        guard orderedViewControllersCount > previousIndex else {
            return nil
        }
        
        return orderedViewControllers[previousIndex]
    }
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
        guard let viewControllerIndex = orderedViewControllers.firstIndex(where: {$0 === viewController}) else {
            return nil
        }
        
        let nextIndex = viewControllerIndex + 1
        let orderedViewControllersCount = orderedViewControllers.count
        
        guard orderedViewControllersCount != nextIndex else {
            return orderedViewControllers.first
        }
        
        guard orderedViewControllersCount > nextIndex else {
            return nil
        }
        
        return orderedViewControllers[nextIndex]
    }
    
    func presentationCount(for pageViewController: UIPageViewController) -> Int {
        return orderedViewControllers.count
    }
    func presentationIndex(for pageViewController: UIPageViewController) -> Int {
        print("We in here!")
        guard let firstViewController = viewControllers?.first,
            let firstViewControllerIndex = orderedViewControllers.firstIndex(where: {$0 === firstViewController}) else {
                return 0
        }
    
        
        
    return firstViewControllerIndex
    }
    
}

