package ffi

import (
	"fmt"

	. "github.com/purescript-native/go-runtime"
)

func init() {

	exports := Foreign("FFI.FFI")

	exports["goAdd"] = add
	exports["goLog"] = log

}

func add(a any) any {
	return func(b any) any {
		return a.(int) + b.(int)
	}
}

func log(v any) any {
	return func() any {
		fmt.Println(v)
		return nil
	}
}
