import Async
import WebSocket
import Foundation


/// EngineExtensions: Sends the expectation of self to a websocket.
///
///    router.websocket("demo") { (req, ws) in
///         ws.onData({ (ws, msg) in
///            _ = Future(msg)
///                 .send(to: ws)
///         })
///     }
///
/// - Parameter websocket: The `WebSocket` to send the expectation to.
/// - Returns: Passes through the expectation of `self` after sending to `websocket`
extension Future where Expectation == String {
    public func send(to websocket: WebSocket) -> Future<Expectation> {
        return self.flatMap(to: Expectation.self) { (data) in
            websocket.send(string: data)
            return self
        }
    }
}


/// EngineExtensions: Sends the expectation of self to a websocket.
///
///    router.websocket("demo") { (req, ws) in
///         ws.onString({ (ws, msg) in
///            _ = Future(msg)
///                 .send(to: ws)
///         })
///     }
///
/// - Parameter websocket: The `WebSocket` to send the expectation to,
/// - Returns: Passes through the expectation of `self` after sending to `websocket`
extension Future where Expectation == Data {
    public func send(to websocket: WebSocket) -> Future<Expectation> {
        return self.flatMap(to: Expectation.self) { (data) in
            websocket.send(data: data)
            return self
        }
    }
}
