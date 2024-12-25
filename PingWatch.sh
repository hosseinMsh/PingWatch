#!/bin/bash
# Function to display help
show_help() {
    echo "Usage: $0 -b <base_ip> -s <start_range> -e <end_range> -f <output_file> [-v]"
    echo
    echo "Options:"
    echo "  -b, --base_ip <base_ip>       Base IP address (e.g., 192.168.1)"
    echo "  -s, --start <start_range>      Start range (1-255)"
    echo "  -e, --end <end_range>          End range (1-255)"
    echo "  -f, --file_saving <name_file>  Output file name (default: ping_results.txt)"
    echo "  -v, --view                      View the status of all IPs"
    echo "  -h, --help                      Show this help message"
    exit 0
}

# Default values
output_file="ping_results.txt"
start_range=1
end_range=255
base_ip=""

# Parse command-line arguments
while [[ "$#" -gt 0 ]]; do
    case $1 in
        -b|--base_ip) base_ip="$2"; shift ;;
        -s|--start) start_range="$2"; shift ;;
        -e|--end) end_range="$2"; shift ;;
        -f|--file_saving) output_file="$2"; shift ;;
        -v|--view) view=true ;;
        -h|--help) show_help ;;
        *) echo "Unknown parameter passed: $1"; show_help ;;
    esac
    shift
done

# Validate input
if [[ -z "$base_ip" || ! "$start_range" =~ ^[0-9]+$ || ! "$end_range" =~ ^[0-9]+$ || "$start_range" -gt "$end_range" ]]; then
    echo "Invalid input. Use -h for help."
    exit 1
fi

# Function to ping IPs and save results
ping_ips() {
    > "$output_file"  # Clear the output file
    for i in $(seq "$start_range" "$end_range"); do
        ping -c 1 "${base_ip}.${i}" > /dev/null 2>&1
        if [ $? -eq 0 ]; then
            echo "${base_ip}.${i} responded." >> "$output_file"
        else
            echo "${base_ip}.${i} did not respond." >> "$output_file"
        fi
    done
    echo "Ping results saved to $output_file"
}

# Function to view results
view_results() {
    if [[ -f "$output_file" ]]; then
        cat "$output_file"
    else
        echo "No results found. Please run the ping command first."
    fi
}

# Run in the background if not viewing
if [[ "$view" != true ]]; then
    ping_ips &
else
    view_results
fi