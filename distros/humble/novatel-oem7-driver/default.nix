
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, boost, geographiclib, gps-msgs, launch-testing, launch-testing-ament-cmake, launch-testing-ros, nav-msgs, nmea-msgs, novatel-oem7-msgs, pluginlib, rclcpp, rclcpp-components, rclpy, rosbag2, rosidl-runtime-py, sensor-msgs, tf2-geometry-msgs }:
buildRosPackage {
  pname = "ros-humble-novatel-oem7-driver";
  version = "20.1.0-r1";

  src = fetchurl {
    url = "https://github.com/novatel-gbp/novatel_oem7_driver-release/archive/release/humble/novatel_oem7_driver/20.1.0-1.tar.gz";
    name = "20.1.0-1.tar.gz";
    sha256 = "c6b682f112867a5d80548cd081a9f3e9df2b90d030bf29de2882dc19117eeab5";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ launch-testing launch-testing-ament-cmake launch-testing-ros rclpy rosbag2 rosidl-runtime-py ];
  propagatedBuildInputs = [ boost geographiclib gps-msgs nav-msgs nmea-msgs novatel-oem7-msgs pluginlib rclcpp rclcpp-components sensor-msgs tf2-geometry-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''NovAtel Oem7 ROS Driver'';
    license = with lib.licenses; [ mit ];
  };
}
