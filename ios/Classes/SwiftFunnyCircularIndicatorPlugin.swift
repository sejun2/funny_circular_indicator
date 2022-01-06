import Flutter
import UIKit

public class SwiftFunnyCircularIndicatorPlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "funny_circular_indicator", binaryMessenger: registrar.messenger())
    let instance = SwiftFunnyCircularIndicatorPlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
    result("iOS " + UIDevice.current.systemVersion)
  }
}
