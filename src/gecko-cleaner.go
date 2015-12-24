package main

import ("os";"os/exec";"flag";"fmt";"strings")

const WeWantToRemove = "Wine Gecko (32-bit)"

var bottle string

func init() {
    flag.StringVar(&bottle, "bottle", "", "bottle name to operate")
}

func main() {
    flag.Parse()
    if flag.NFlag() == 0 {
        fmt.Printf("no bottle given. usage:\n")
        flag. PrintDefaults()
        os.Exit(1)
    }
    out, err := exec.Command("/opt/cxoffice/bin/wine", "--bottle=" + bottle, "uninstaller", "--list").Output()
    if err != nil {
        fmt.Printf("ERR %s\n", err.Error())
    }
    arr := strings.Split(string(out), "\n")
    var counts int = 0
    for _, v := range arr {
        if len(v) == 0 { continue }
        s := strings.Split(v, "|||")
        if s[1] == WeWantToRemove {
            fmt.Printf("==>uninstall %s:%s...\n", s[1], s[0])
            exec.Command("/opt/cxoffice/bin/wine", "--bottle=" + bottle, "uninstaller", "--remove", s[0]).Run()
            fmt.Printf("<==done.\n")
            counts+=1
        }
    }
    fmt.Printf("%d uninstalled.\n", counts)
}
