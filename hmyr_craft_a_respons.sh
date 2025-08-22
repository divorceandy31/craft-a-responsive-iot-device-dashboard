#!/bin/bash

# IoT Device Dashboard Project

# Import necessary libraries and tools
. ./lib/colors.sh
. ./lib/utils.sh
. ./lib/dashboard.sh

# Define dashboard layout
dashboard_layout() {
  clear
  echo -e "${GREEN} IoT Device Dashboard ${NC}"
  echo "-------------------------------"
  echo " 1. Device Status"
  echo " 2. Sensor Readings"
  echo " 3. Alerts and Notifications"
  echo " 4. Settings and Configuration"
  echo "-------------------------------"
}

# Define device status section
device_status() {
  echo -e "${CYAN} Device Status ${NC}"
  echo "Device Name: $(get_device_name)"
  echo "Device ID: $(get_device_id)"
  echo "Device Status: $(get_device_status)"
}

# Define sensor readings section
sensor_readings() {
  echo -e "${CYAN} Sensor Readings ${NC}"
  echo "Temperature: $(get_temp_reading)"
  echo "Humidity: $(get_humidity_reading)"
  echo "Pressure: $(get_pressure_reading)"
}

# Define alerts and notifications section
alerts_and_notifications() {
  echo -e "${CYAN} Alerts and Notifications ${NC}"
  echo "Alert 1: $(get_alert_1)"
  echo "Alert 2: $(get_alert_2)"
  echo "Alert 3: $(get_alert_3)"
}

# Define settings and configuration section
settings_and_config() {
  echo -e "${CYAN} Settings and Configuration ${NC}"
  echo "Device IP: $(get_device_ip)"
  echo "Device Port: $(get_device_port)"
  echo "Update Interval: $(get_update_interval)"
}

# Main dashboard function
dashboard() {
  while true; do
    dashboard_layout
    read -p "Select an option: " option
    case $option in
      1) device_status ;;
      2) sensor_readings ;;
      3) alerts_and_notifications ;;
      4) settings_and_config ;;
      *) echo "Invalid option. Please try again." ;;
    esac
  done
}

# Run the dashboard
dashboard