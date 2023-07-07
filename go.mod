module project.localhost/example

go 1.20

replace project.localhost/purescript-native/ffi-loader => ./purescript-native

replace project.localhost/purescript-native/output => ./output

require github.com/purescript-native/go-runtime v0.1.2

require (
	github.com/purescript-native/go-ffi v0.0.0-20230328040617-764795a586f1 // indirect
	project.localhost/purescript-native/ffi-loader v0.0.0-00010101000000-000000000000 // indirect
	project.localhost/purescript-native/output v0.0.0-00010101000000-000000000000 // indirect
)

replace github.com/purescript-native/go-ffi => github.com/joprice/purescript-native-go-ffi v0.0.0-20230319170919-df001aa880fd
