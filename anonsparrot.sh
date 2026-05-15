#!/bin/bash
# ============================================================
#   Anon's Parrot Toolkit
#   c0d3d By @non G00nz
# ============================================================

# ---------- Colors ----------
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
CYAN='\033[0;36m'
MAGENTA='\033[0;35m'
BLUE='\033[0;34m'
WHITE='\033[1;37m'
BOLD='\033[1m'
NC='\033[0m' # No Color

# ---------- Banner ----------
print_banner() {
    clear
    echo -e "${RED}"
    echo "  █████╗ ███╗   ██╗ ██████╗ ███╗   ██╗███████╗"
    echo " ██╔══██╗████╗  ██║██╔═══██╗████╗  ██║██╔════╝"
    echo " ███████║██╔██╗ ██║██║   ██║██╔██╗ ██║███████╗"
    echo " ██╔══██║██║╚██╗██║██║   ██║██║╚██╗██║╚════██║"
    echo " ██║  ██║██║ ╚████║╚██████╔╝██║ ╚████║███████║"
    echo " ╚═╝  ╚═╝╚═╝  ╚═══╝ ╚═════╝ ╚═╝  ╚═══╝╚══════╝"
    echo -e "${CYAN}"
    echo " ██████╗  █████╗ ██████╗ ██████╗  ██████╗ ████████╗"
    echo " ██╔══██╗██╔══██╗██╔══██╗██╔══██╗██╔═══██╗╚══██╔══╝"
    echo " ██████╔╝███████║██████╔╝██████╔╝██║   ██║   ██║   "
    echo " ██╔═══╝ ██╔══██║██╔══██╗██╔══██╗██║   ██║   ██║   "
    echo " ██║     ██║  ██║██║  ██║██║  ██║╚██████╔╝   ██║   "
    echo " ╚═╝     ╚═╝  ╚═╝╚═╝  ╚═╝╚═╝  ╚═╝ ╚═════╝    ╚═╝  "
    echo -e "${MAGENTA}"
    echo "  ████████╗ ██████╗  ██████╗ ██╗     ██╗  ██╗██╗████████╗"
    echo "  ╚══██╔══╝██╔═══██╗██╔═══██╗██║     ██║ ██╔╝██║╚══██╔══╝"
    echo "     ██║   ██║   ██║██║   ██║██║     █████╔╝ ██║   ██║   "
    echo "     ██║   ██║   ██║██║   ██║██║     ██╔═██╗ ██║   ██║   "
    echo "     ██║   ╚██████╔╝╚██████╔╝███████╗██║  ██╗██║   ██║   "
    echo "     ╚═╝    ╚═════╝  ╚═════╝ ╚══════╝╚═╝  ╚═╝╚═╝   ╚═╝  "
    echo -e "${YELLOW}"
    echo "            c0d3d By @non G00nz"
    echo -e "${WHITE}    ================================================${NC}"
    echo ""
}

# ---------- Tool Categories & Packages ----------

# Information Gathering
INFO_TOOLS=(
    nmap zenmap masscan netdiscover dnsenum dnsmap dnsrecon dmitry
    recon-ng theharvester maltego spiderfoot whatweb fierce
    whois host dig traceroute arping nbtscan smbmap enum4linux
    enum4linux-ng onesixtyone snmpwalk p0f amass
)

# Vulnerability Analysis
VULN_TOOLS=(
    openvas nikto nessus lynis wpscan joomscan droopescan
    sqlmap nuclei legion golismero
)

# Web Application Analysis
WEB_TOOLS=(
    burpsuite zaproxy dirb dirbuster gobuster wfuzz ffuf
    sqlmap xsser commix weevely davtest cadaver cutycapt
    httrack wget curl httpie caido
)

# Password Attacks
PASS_TOOLS=(
    hydra medusa ncrack john hashcat ophcrack crunch wordlists
    cewl cupp rsmangler hash-identifier findmyhash fcrackzip
    pdfcrack truecrack chntpw samdump2 mimikatz
)

# Wireless Attacks
WIFI_TOOLS=(
    aircrack-ng airbase-ng airmon-ng airodump-ng aireplay-ng
    reaver bully wash wifite cowpatty pixiewps kismet
    wifiphisher hostapd-wpe mdk4 bettercap
)

# Exploitation Tools
EXPLOIT_TOOLS=(
    metasploit-framework exploitdb searchsploit armitage
    beef-xss yersinia msfvenom powersploit veil shellter
    evilginx2 evil-winrm netexec crackmapexec impacket-scripts
)

# Sniffing & Spoofing
SNIFF_TOOLS=(
    wireshark tshark tcpdump ettercap-graphical ettercap-text-only
    dsniff arpspoof bettercap mitmproxy responder
    sslstrip ssldump driftnet urlsnarf macchanger netsniff-ng
)

# Post Exploitation
POST_TOOLS=(
    empire powersploit mimikatz weevely meterpreter backdoor-factory
    the-powder-toy pwncat-cs ligolo-ng
)

# Forensics & Reverse Engineering
FORENSIC_TOOLS=(
    autopsy sleuthkit foremost scalpel binwalk bulk-extractor
    dc3dd dcfldd guymager ddrescue ewf-tools afflib-tools
    volatility3 rekall plaso log2timeline
    radare2 ghidra gdb gdb-gef pwndbg peda
    ollydbg edb-debugger objdump ltrace strace strings
    file hexeditor bless ht
)

# Cryptography
CRYPTO_TOOLS=(
    hashcat john gpg openssl gnupg veracrypt zulucrypt-console
    sirikali cryptsetup steghide stegosuite outguess
    stegcracker stegseek
)

# Anonymity & Privacy
ANON_TOOLS=(
    tor torbrowser-launcher anonsurf i2p onionshare
    proxychains4 privoxy openvpn wireguard-tools
    macchanger firejail apparmor
)

# Social Engineering
SE_TOOLS=(
    set maltego
)

# Reporting
REPORT_TOOLS=(
    cherrytree dradis pipal recordmydesktop faraday
    libreoffice
)

# Networking
NET_TOOLS=(
    ncat netcat-openbsd socat hping3 fping mtr iperf3
    nmap traceroute tcptraceroute proxychains4 stunnel4
    sshuttle chisel iodine ptunnel-ng dns2tcp
)

# OSINT
OSINT_TOOLS=(
    maltego recon-ng theharvester spiderfoot shodan
    amass metagoofil exiftool sherlock holehe phoneinfoga
)

# Development & Debugging
DEV_TOOLS=(
    git python3 python3-pip ruby gem nodejs npm
    gcc g++ gdb make cmake nasm radare2
)

# ---------- Helper: check if a tool is installed ----------
is_installed() {
    command -v "$1" &>/dev/null || dpkg -l "$1" &>/dev/null 2>&1
}

# ---------- Check tools in a category ----------
check_category() {
    local category_name="$1"
    shift
    local tools=("$@")
    local missing=()
    local installed=()

    echo -e "\n${BOLD}${CYAN}[ $category_name ]${NC}"
    echo -e "${WHITE}--------------------------------------------------${NC}"

    for tool in "${tools[@]}"; do
        if is_installed "$tool"; then
            echo -e "  ${GREEN}[+]${NC} $tool ${GREEN}(installed)${NC}"
            installed+=("$tool")
        else
            echo -e "  ${RED}[-]${NC} $tool ${RED}(not installed)${NC}"
            missing+=("$tool")
        fi
    done

    echo ""
    echo -e "  ${GREEN}Installed: ${#installed[@]}${NC}  |  ${RED}Missing: ${#missing[@]}${NC}"

    # Store missing tools globally
    ALL_MISSING+=("${missing[@]}")
}

# ---------- Install missing tools ----------
install_missing() {
    if [ ${#ALL_MISSING[@]} -eq 0 ]; then
        echo -e "\n${GREEN}[✔] All tools are already installed! Nothing to do.${NC}\n"
        return
    fi

    echo -e "\n${YELLOW}[!] The following tools are not installed:${NC}"
    for t in "${ALL_MISSING[@]}"; do
        echo -e "  ${RED}→${NC} $t"
    done

    echo ""
    read -rp "$(echo -e ${CYAN}"[?] Do you want to install all missing tools? (y/n): "${NC})" choice

    if [[ "$choice" =~ ^[Yy]$ ]]; then
        echo -e "\n${YELLOW}[*] Updating apt repositories...${NC}"
        sudo apt update -y

        local failed=()
        for tool in "${ALL_MISSING[@]}"; do
            echo -e "\n${CYAN}[*] Installing: $tool${NC}"
            if sudo apt install -y "$tool" 2>/dev/null; then
                echo -e "${GREEN}[✔] $tool installed successfully.${NC}"
            else
                echo -e "${RED}[✘] Failed to install: $tool (may require manual install or different package name)${NC}"
                failed+=("$tool")
            fi
        done

        if [ ${#failed[@]} -gt 0 ]; then
            echo -e "\n${RED}[!] The following tools could not be installed via apt:${NC}"
            for f in "${failed[@]}"; do
                echo -e "  ${RED}→ $f${NC}"
            done
            echo -e "${YELLOW}[!] Try installing these manually or check their GitHub pages.${NC}"
        else
            echo -e "\n${GREEN}[✔] All missing tools installed successfully!${NC}"
        fi

    else
        echo -e "\n${YELLOW}[!] Installation skipped.${NC}"
    fi
}

# ---------- Install ALL Parrot tools via metapackage ----------
install_all_parrot() {
    echo -e "\n${YELLOW}[*] This will install the full Parrot tools metapackage (parrot-tools-full).${NC}"
    echo -e "${RED}[!] WARNING: This will download several GB of data.${NC}"
    read -rp "$(echo -e ${CYAN}"[?] Continue? (y/n): "${NC})" choice

    if [[ "$choice" =~ ^[Yy]$ ]]; then
        echo -e "\n${CYAN}[*] Updating repositories...${NC}"
        sudo apt update -y
        echo -e "${CYAN}[*] Installing parrot-tools-full...${NC}"
        sudo apt install -y parrot-tools-full
        echo -e "${GREEN}[✔] Done! All Parrot tools installed.${NC}"
    else
        echo -e "${YELLOW}[!] Skipped.${NC}"
    fi
}

# ---------- Launch a tool ----------
launch_tool() {
    read -rp "$(echo -e ${CYAN}"[?] Enter tool name to launch: "${NC})" tool_name
    if is_installed "$tool_name"; then
        echo -e "${GREEN}[*] Launching $tool_name...${NC}\n"
        $tool_name
    else
        echo -e "${RED}[✘] Tool '$tool_name' is not installed or not found in PATH.${NC}"
    fi
}

# ---------- Update all tools ----------
update_tools() {
    echo -e "\n${CYAN}[*] Running full system and tools update...${NC}"
    sudo apt update -y && sudo apt upgrade -y && sudo apt autoremove -y
    echo -e "${GREEN}[✔] System and tools updated successfully.${NC}"
}

# ---------- System Info ----------
system_info() {
    echo -e "\n${CYAN}======== System Information ========${NC}"
    echo -e "${WHITE}Hostname    :${NC} $(hostname)"
    echo -e "${WHITE}OS          :${NC} $(lsb_release -d 2>/dev/null | cut -f2 || cat /etc/os-release | grep PRETTY_NAME | cut -d= -f2 | tr -d '"')"
    echo -e "${WHITE}Kernel      :${NC} $(uname -r)"
    echo -e "${WHITE}Architecture:${NC} $(uname -m)"
    echo -e "${WHITE}IP Address  :${NC} $(hostname -I | awk '{print $1}')"
    echo -e "${WHITE}User        :${NC} $(whoami)"
    echo -e "${WHITE}Uptime      :${NC} $(uptime -p)"
    echo -e "${WHITE}Memory      :${NC} $(free -h | awk '/^Mem:/ {print $3 " used / " $2 " total"}')"
    echo -e "${WHITE}Disk        :${NC} $(df -h / | awk 'NR==2 {print $3 " used / " $2 " total (" $5 " used)"}')"
    echo ""
}

# ---------- Main Menu ----------
main_menu() {
    while true; do
        print_banner
        echo -e "${WHITE}  ============  MAIN MENU  ============${NC}"
        echo -e "  ${CYAN}[1]${NC}  Check All Tools (by category)"
        echo -e "  ${CYAN}[2]${NC}  Information Gathering Tools"
        echo -e "  ${CYAN}[3]${NC}  Vulnerability Analysis Tools"
        echo -e "  ${CYAN}[4]${NC}  Web Application Analysis Tools"
        echo -e "  ${CYAN}[5]${NC}  Password Attack Tools"
        echo -e "  ${CYAN}[6]${NC}  Wireless Attack Tools"
        echo -e "  ${CYAN}[7]${NC}  Exploitation Tools"
        echo -e "  ${CYAN}[8]${NC}  Sniffing & Spoofing Tools"
        echo -e "  ${CYAN}[9]${NC}  Post Exploitation Tools"
        echo -e "  ${CYAN}[10]${NC} Forensics & Reverse Engineering Tools"
        echo -e "  ${CYAN}[11]${NC} Cryptography Tools"
        echo -e "  ${CYAN}[12]${NC} Anonymity & Privacy Tools"
        echo -e "  ${CYAN}[13]${NC} Social Engineering Tools"
        echo -e "  ${CYAN}[14]${NC} OSINT Tools"
        echo -e "  ${CYAN}[15]${NC} Networking Tools"
        echo -e "  ${CYAN}[16]${NC} Development & Debugging Tools"
        echo -e "  ${CYAN}[17]${NC} Install Missing Tools (detected from check)"
        echo -e "  ${CYAN}[18]${NC} Install ALL Parrot Tools (parrot-tools-full)"
        echo -e "  ${CYAN}[19]${NC} Update All Tools"
        echo -e "  ${CYAN}[20]${NC} Launch a Tool"
        echo -e "  ${CYAN}[21]${NC} System Information"
        echo -e "  ${RED}[0]${NC}  Exit"
        echo ""
        read -rp "$(echo -e ${YELLOW}"  [>] Select an option: "${NC})" opt

        ALL_MISSING=()

        case "$opt" in
            1)
                check_category "Information Gathering"    "${INFO_TOOLS[@]}"
                check_category "Vulnerability Analysis"   "${VULN_TOOLS[@]}"
                check_category "Web Application Analysis" "${WEB_TOOLS[@]}"
                check_category "Password Attacks"         "${PASS_TOOLS[@]}"
                check_category "Wireless Attacks"         "${WIFI_TOOLS[@]}"
                check_category "Exploitation"             "${EXPLOIT_TOOLS[@]}"
                check_category "Sniffing & Spoofing"      "${SNIFF_TOOLS[@]}"
                check_category "Post Exploitation"        "${POST_TOOLS[@]}"
                check_category "Forensics & Reversing"    "${FORENSIC_TOOLS[@]}"
                check_category "Cryptography"             "${CRYPTO_TOOLS[@]}"
                check_category "Anonymity & Privacy"      "${ANON_TOOLS[@]}"
                check_category "Social Engineering"       "${SE_TOOLS[@]}"
                check_category "OSINT"                    "${OSINT_TOOLS[@]}"
                check_category "Networking"               "${NET_TOOLS[@]}"
                check_category "Development & Debugging"  "${DEV_TOOLS[@]}"
                echo ""
                echo -e "${BOLD}${YELLOW}  Total missing tools: ${#ALL_MISSING[@]}${NC}"
                read -rp "$(echo -e ${CYAN}"  [?] Install missing tools now? (y/n): "${NC})" ans
                [[ "$ans" =~ ^[Yy]$ ]] && install_missing
                read -rp "$(echo -e ${WHITE}"  Press [Enter] to return to menu..."${NC})"
                ;;
            2)  check_category "Information Gathering" "${INFO_TOOLS[@]}"
                read -rp "$(echo -e ${CYAN}"  [?] Install missing? (y/n): "${NC})" ans
                [[ "$ans" =~ ^[Yy]$ ]] && install_missing
                read -rp "$(echo -e ${WHITE}"  Press [Enter] to continue..."${NC})" ;;
            3)  check_category "Vulnerability Analysis" "${VULN_TOOLS[@]}"
                read -rp "$(echo -e ${CYAN}"  [?] Install missing? (y/n): "${NC})" ans
                [[ "$ans" =~ ^[Yy]$ ]] && install_missing
                read -rp "$(echo -e ${WHITE}"  Press [Enter] to continue..."${NC})" ;;
            4)  check_category "Web Application Analysis" "${WEB_TOOLS[@]}"
                read -rp "$(echo -e ${CYAN}"  [?] Install missing? (y/n): "${NC})" ans
                [[ "$ans" =~ ^[Yy]$ ]] && install_missing
                read -rp "$(echo -e ${WHITE}"  Press [Enter] to continue..."${NC})" ;;
            5)  check_category "Password Attacks" "${PASS_TOOLS[@]}"
                read -rp "$(echo -e ${CYAN}"  [?] Install missing? (y/n): "${NC})" ans
                [[ "$ans" =~ ^[Yy]$ ]] && install_missing
                read -rp "$(echo -e ${WHITE}"  Press [Enter] to continue..."${NC})" ;;
            6)  check_category "Wireless Attacks" "${WIFI_TOOLS[@]}"
                read -rp "$(echo -e ${CYAN}"  [?] Install missing? (y/n): "${NC})" ans
                [[ "$ans" =~ ^[Yy]$ ]] && install_missing
                read -rp "$(echo -e ${WHITE}"  Press [Enter] to continue..."${NC})" ;;
            7)  check_category "Exploitation Tools" "${EXPLOIT_TOOLS[@]}"
                read -rp "$(echo -e ${CYAN}"  [?] Install missing? (y/n): "${NC})" ans
                [[ "$ans" =~ ^[Yy]$ ]] && install_missing
                read -rp "$(echo -e ${WHITE}"  Press [Enter] to continue..."${NC})" ;;
            8)  check_category "Sniffing & Spoofing" "${SNIFF_TOOLS[@]}"
                read -rp "$(echo -e ${CYAN}"  [?] Install missing? (y/n): "${NC})" ans
                [[ "$ans" =~ ^[Yy]$ ]] && install_missing
                read -rp "$(echo -e ${WHITE}"  Press [Enter] to continue..."${NC})" ;;
            9)  check_category "Post Exploitation" "${POST_TOOLS[@]}"
                read -rp "$(echo -e ${CYAN}"  [?] Install missing? (y/n): "${NC})" ans
                [[ "$ans" =~ ^[Yy]$ ]] && install_missing
                read -rp "$(echo -e ${WHITE}"  Press [Enter] to continue..."${NC})" ;;
            10) check_category "Forensics & Reverse Engineering" "${FORENSIC_TOOLS[@]}"
                read -rp "$(echo -e ${CYAN}"  [?] Install missing? (y/n): "${NC})" ans
                [[ "$ans" =~ ^[Yy]$ ]] && install_missing
                read -rp "$(echo -e ${WHITE}"  Press [Enter] to continue..."${NC})" ;;
            11) check_category "Cryptography" "${CRYPTO_TOOLS[@]}"
                read -rp "$(echo -e ${CYAN}"  [?] Install missing? (y/n): "${NC})" ans
                [[ "$ans" =~ ^[Yy]$ ]] && install_missing
                read -rp "$(echo -e ${WHITE}"  Press [Enter] to continue..."${NC})" ;;
            12) check_category "Anonymity & Privacy" "${ANON_TOOLS[@]}"
                read -rp "$(echo -e ${CYAN}"  [?] Install missing? (y/n): "${NC})" ans
                [[ "$ans" =~ ^[Yy]$ ]] && install_missing
                read -rp "$(echo -e ${WHITE}"  Press [Enter] to continue..."${NC})" ;;
            13) check_category "Social Engineering" "${SE_TOOLS[@]}"
                read -rp "$(echo -e ${CYAN}"  [?] Install missing? (y/n): "${NC})" ans
                [[ "$ans" =~ ^[Yy]$ ]] && install_missing
                read -rp "$(echo -e ${WHITE}"  Press [Enter] to continue..."${NC})" ;;
            14) check_category "OSINT" "${OSINT_TOOLS[@]}"
                read -rp "$(echo -e ${CYAN}"  [?] Install missing? (y/n): "${NC})" ans
                [[ "$ans" =~ ^[Yy]$ ]] && install_missing
                read -rp "$(echo -e ${WHITE}"  Press [Enter] to continue..."${NC})" ;;
            15) check_category "Networking" "${NET_TOOLS[@]}"
                read -rp "$(echo -e ${CYAN}"  [?] Install missing? (y/n): "${NC})" ans
                [[ "$ans" =~ ^[Yy]$ ]] && install_missing
                read -rp "$(echo -e ${WHITE}"  Press [Enter] to continue..."${NC})" ;;
            16) check_category "Development & Debugging" "${DEV_TOOLS[@]}"
                read -rp "$(echo -e ${CYAN}"  [?] Install missing? (y/n): "${NC})" ans
                [[ "$ans" =~ ^[Yy]$ ]] && install_missing
                read -rp "$(echo -e ${WHITE}"  Press [Enter] to continue..."${NC})" ;;
            17) install_missing
                read -rp "$(echo -e ${WHITE}"  Press [Enter] to continue..."${NC})" ;;
            18) install_all_parrot
                read -rp "$(echo -e ${WHITE}"  Press [Enter] to continue..."${NC})" ;;
            19) update_tools
                read -rp "$(echo -e ${WHITE}"  Press [Enter] to continue..."${NC})" ;;
            20) launch_tool
                read -rp "$(echo -e ${WHITE}"  Press [Enter] to continue..."${NC})" ;;
            21) system_info
                read -rp "$(echo -e ${WHITE}"  Press [Enter] to continue..."${NC})" ;;
            0)
                echo -e "\n${RED}  [!] Exiting Anon's Parrot Toolkit. Stay anonymous.${NC}\n"
                exit 0 ;;
            *)
                echo -e "${RED}  [!] Invalid option. Try again.${NC}"
                sleep 1 ;;
        esac
    done
}

# ---------- Root Check ----------
if [[ $EUID -ne 0 ]]; then
    echo -e "${YELLOW}[!] Some functions require root. Consider running with sudo.${NC}"
    sleep 1
fi

# ---------- Entry Point ----------
main_menu

