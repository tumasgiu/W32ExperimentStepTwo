import CWin32

@_silgen_name("swiftApp")
public func application() -> Int {
    MessageBoxA(nil, "Hello, Windows", "Swift", 0)
    return 0
}
