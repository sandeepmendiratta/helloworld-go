package main

import (
	"fmt"
	"log"
	"net/http"
)
func main() {
		http.HandleFunc("/", func(w http.ResponseWriter, r *http.Request) {
		fmt.Fprint(w, "Hi there, ", r.URL.Path[1:], "!")
		}	)

	log.Printf("Listening on %s", ":80")
  http.ListenAndServe(":80", nil)
}
