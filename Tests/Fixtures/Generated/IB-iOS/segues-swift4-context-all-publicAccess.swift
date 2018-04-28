// swiftlint:disable all
// Generated using SwiftGen, by O.Halligon — https://github.com/SwiftGen/SwiftGen

// swiftlint:disable sorted_imports
import Foundation
import AVKit
import CustomSegue
import GLKit
import LocationPicker
import SlackTextViewController
import UIKit

// swiftlint:disable superfluous_disable_command
// swiftlint:disable file_length

// MARK: - Storyboard Segues

// swiftlint:disable explicit_type_interface identifier_name line_length type_body_length type_name
public extension CreateAccViewController {
  public enum StoryboardSegue: String {
    case showPassword = "ShowPassword"
  }

  public func perform(segue: StoryboardSegue, sender: Any? = nil) {
    let identifier = segue.rawValue
    performSegue(withIdentifier: identifier, sender: sender)
  }

  public enum TypedStoryboardSegue {
    case showPassword(destination: UIKit.UIViewController)
    case unnamedSegue

    // swiftlint:disable cyclomatic_complexity
    init(segue: StoryboardSegue) {
      switch segue.identifier ?? "" {
      case "ShowPassword":
        let vc = segue.destination
        self = .showPassword(destination: vc)
      case "":
        self = .unnamedSegue
      default:
        fatalError("Unrecognized segue '\(segue.identifier ?? "")' in CreateAccViewController")
      }
    }
    // swiftlint:enable cyclomatic_complexity
  }
}

public extension XXPickerViewController {
  public enum StoryboardSegue: String {
    case customBack = "CustomBack"
    case embed = "Embed"
    case nonCustom = "NonCustom"
    case showNavCtrl = "Show-NavCtrl"
  }

  public func perform(segue: StoryboardSegue, sender: Any? = nil) {
    let identifier = segue.rawValue
    performSegue(withIdentifier: identifier, sender: sender)
  }

  public enum TypedStoryboardSegue {
    case customBack(destination: UIKit.UIViewController, segue: CustomSegueClass2)
    case embed(destination: UIKit.UIViewController)
    case nonCustom(destination: UIKit.UIViewController)
    case showNavCtrl(destination: UIKit.UINavigationController, segue: CustomSegueClass)
    case unnamedSegue

    // swiftlint:disable cyclomatic_complexity
    init(segue: StoryboardSegue) {
      switch segue.identifier ?? "" {
      case "CustomBack":
        guard let segue = segue as? CustomSegueClass2 else {
          fatalError("Segue 'CustomBack' is not of the expected type CustomSegueClass2.")
        }
        let vc = segue.destination
        self = .customBack(destination: vc, segue: segue)
      case "Embed":
        let vc = segue.destination
        self = .embed(destination: vc)
      case "NonCustom":
        let vc = segue.destination
        self = .nonCustom(destination: vc)
      case "Show-NavCtrl":
        guard let segue = segue as? CustomSegueClass else {
          fatalError("Segue 'Show-NavCtrl' is not of the expected type CustomSegueClass.")
        }
        guard let vc = segue.destination as? UIKit.UINavigationController else {
          fatalError("Destination of segue 'Show-NavCtrl' is not of the expected type UIKit.UINavigationController.")
        }
        self = .showNavCtrl(destination: vc, segue: segue)
      case "":
        self = .unnamedSegue
      default:
        fatalError("Unrecognized segue '\(segue.identifier ?? "")' in XXPickerViewController")
      }
    }
    // swiftlint:enable cyclomatic_complexity
  }
}

public extension LocationPicker.LocationPickerViewController {
  public enum StoryboardSegue: String {
    case `private`
  }

  public func perform(segue: StoryboardSegue, sender: Any? = nil) {
    let identifier = segue.rawValue
    performSegue(withIdentifier: identifier, sender: sender)
  }

  public enum TypedStoryboardSegue {
    case `private`(destination: SlackTextViewController.SLKTextViewController, segue: CustomSegue.SlideDownSegue)
    case unnamedSegue

    // swiftlint:disable cyclomatic_complexity
    init(segue: StoryboardSegue) {
      switch segue.identifier ?? "" {
      case "private":
        guard let segue = segue as? CustomSegue.SlideDownSegue else {
          fatalError("Segue 'private' is not of the expected type CustomSegue.SlideDownSegue.")
        }
        guard let vc = segue.destination as? SlackTextViewController.SLKTextViewController else {
          fatalError("Destination of segue 'private' is not of the expected type SlackTextViewController.SLKTextViewController.")
        }
        self = .`private`(destination: vc, segue: segue)
      case "":
        self = .unnamedSegue
      default:
        fatalError("Unrecognized segue '\(segue.identifier ?? "")' in LocationPicker.LocationPickerViewController")
      }
    }
    // swiftlint:enable cyclomatic_complexity
  }
}

public extension SlackTextViewController.SLKTextViewController {
  public enum StoryboardSegue: String {
    case `private`
  }

  public func perform(segue: StoryboardSegue, sender: Any? = nil) {
    let identifier = segue.rawValue
    performSegue(withIdentifier: identifier, sender: sender)
  }

  public enum TypedStoryboardSegue {
    case `private`(destination: SlackTextViewController.SLKTextViewController, segue: CustomSegue.SlideDownSegue)
    case unnamedSegue

    // swiftlint:disable cyclomatic_complexity
    init(segue: StoryboardSegue) {
      switch segue.identifier ?? "" {
      case "private":
        guard let segue = segue as? CustomSegue.SlideDownSegue else {
          fatalError("Segue 'private' is not of the expected type CustomSegue.SlideDownSegue.")
        }
        guard let vc = segue.destination as? SlackTextViewController.SLKTextViewController else {
          fatalError("Destination of segue 'private' is not of the expected type SlackTextViewController.SLKTextViewController.")
        }
        self = .`private`(destination: vc, segue: segue)
      case "":
        self = .unnamedSegue
      default:
        fatalError("Unrecognized segue '\(segue.identifier ?? "")' in SlackTextViewController.SLKTextViewController")
      }
    }
    // swiftlint:enable cyclomatic_complexity
  }
}

public enum StoryboardSegue {
  public enum AdditionalImport: String, SegueType {
    case `private`
  }
  public enum Message: String, SegueType {
    case customBack = "CustomBack"
    case embed = "Embed"
    case nonCustom = "NonCustom"
    case showNavCtrl = "Show-NavCtrl"
  }
  public enum Wizard: String, SegueType {
    case showPassword = "ShowPassword"
  }
}
// swiftlint:enable explicit_type_interface identifier_name line_length type_body_length type_name

// MARK: - Implementation Details

public protocol SegueType: RawRepresentable { }

public extension UIViewController {
  func perform<S: SegueType>(segue: S, sender: Any? = nil) where S.RawValue == String {
    let identifier = segue.rawValue
    performSegue(withIdentifier: identifier, sender: sender)
  }
}

private final class BundleToken {}
