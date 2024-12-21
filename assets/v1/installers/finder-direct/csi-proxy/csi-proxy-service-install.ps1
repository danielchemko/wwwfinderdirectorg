$flags = "-windows-service -log_file=\etc\kubernetes\logs\csi-proxy.log -logtostderr=false"
sc.exe create csiproxy binPath= "${env:NODE_DIR}\csi-proxy.exe $flags"
sc.exe failure csiproxy reset= 0 actions= restart/10000
sc.exe start csiproxy
