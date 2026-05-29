
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, geographiclib, git, gps-msgs, launch-testing, launch-testing-ament-cmake, launch-testing-ros, nav-msgs, nmea-msgs, novatel-oem7-msgs, pluginlib, rclcpp, rclcpp-components, rclpy, rosbag2, rosidl-runtime-py, sensor-msgs, tf2-geometry-msgs }:
buildRosPackage {
  pname = "ros-kilted-novatel-oem7-driver";
  version = "28.0.0-r1";

  src = fetchurl {
    url = "https://github.com/novatel-gbp/novatel_oem7_driver-release/archive/release/kilted/novatel_oem7_driver/28.0.0-1.tar.gz";
    name = "28.0.0-1.tar.gz";
    sha256 = "4a844b45ad704b1d64b74f8ca57e68bedc6e33b5d5a3c18eedf8a789d3306ff6";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake git ];
  checkInputs = [ launch-testing launch-testing-ament-cmake launch-testing-ros rclpy rosbag2 rosidl-runtime-py ];
  propagatedBuildInputs = [ geographiclib gps-msgs nav-msgs nmea-msgs novatel-oem7-msgs pluginlib rclcpp rclcpp-components sensor-msgs tf2-geometry-msgs ];
  nativeBuildInputs = [ ament-cmake git ];

  meta = {
    description = "NovAtel Oem7 ROS Driver";
    license = with lib.licenses; [ mit ];
  };
}
