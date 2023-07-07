package ffi

import (
	"fmt"

	. "github.com/purescript-native/go-runtime"
)

func init() {

	exports := Foreign("FFI.FFI")

	exports["goAdd"] = add
	exports["goLog"] = log

	exports["maybeAImpl"] = maybeA

}

func maybeA(just any) any {
	return func(nothing any) any {
		return func(v any) any {
			if v.(string) == "a" {
				return just.(func(any) any)(v)
			} else {
				return nothing
			}
		}
	}
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
