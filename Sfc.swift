import CWin32

enum MessageBox {
    struct Options: OptionSet {
        var rawValue: UInt32

        static let ok = Options(rawValue: 0)
        static let abortRetryIgnore = Options(rawValue: 0x2)
        static let iconExclamation = Options(rawValue: 0x30)
        static let cancelTryContinue = Options(rawValue: 0x6)
        static let help = Options(rawValue: 0x4000)
    }
}

func displayMessageBox(message: String, title: String = "Error", options: MessageBox.Options = .ok) {
    MessageBoxA(nil, message, title, options.rawValue)
}

@_silgen_name("swiftApp")
public func application() -> Int {
    displayMessageBox(nil, "Hello Windows !", "Swift")
    return 0
}
