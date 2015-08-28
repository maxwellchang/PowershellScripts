$os = read-host "What is your operating system?"

$int = read-host "Select integration: WNA, WCG, PIX, ASA, CTX, ISA"

& "C:\Program Files (x86)\Websense\Web Security\bin\EIMServer.exe" -i $int NTX "$os" true