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
        viewController.view.backgroundColor = .black
        return viewController
    }
    private func blueViewController() -> UIViewController {
        let viewController = UIViewController()
        viewController.view.backgroundColor = .blue
        return viewController
    }
    private func greenViewController() -> UIViewController {
        let viewController = UIViewController()
        viewController.view.backgroundColor = .green
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

