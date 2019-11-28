package main
import (
 "fmt"
 "log"
 "net/http"
)
func main() {
 fmt.Println("Go docker microcontainer2")
 http.HandleFunc("/", func(w http.ResponseWriter, r *http.Request) {
  fmt.Fprintf(w, "Hello world2")
 })
 log.Fatal(http.ListenAndServe(":8081", nil))
}
