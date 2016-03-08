package main

import ("os";"os/exec";"flag";"fmt";"strings")

const WineUninstallerPath = "c:/windows/system32/uninstaller.exe"
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
    fmt.Printf("=>> Start to uninstall gecko...\n")
    out, err := exec.Command("/opt/cxoffice/bin/wine", "--bottle=" + bottle, "--", WineUninstallerPath, "--list").Output()
    if err != nil {
        fmt.Printf("ERR %s\n", err.Error())
    }
    arr := strings.Split(string(out), "\n")
    var counts int = 0
    for _, v := range arr {
        if len(v) == 0 { continue }
        s := strings.Split(v, "|||")
        if strings.HasPrefix(s[1], WeWantToRemove) {
            err := exec.Command("/opt/cxoffice/bin/wine", "--bottle=" + bottle, "--", WineUninstallerPath, "--remove", s[0]).Run()
            if err != nil {
                fmt.Printf("ERR %s\n", err.Error())
            } else {
                counts++
            }
            fmt.Printf("<==done.\n")
        }
    }
    fmt.Printf("<<= %d uninstalled.\n", counts)
}
