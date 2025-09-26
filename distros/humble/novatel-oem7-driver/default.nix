
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, boost, geographiclib, git, gps-msgs, launch-testing, launch-testing-ament-cmake, launch-testing-ros, nav-msgs, nmea-msgs, novatel-oem7-msgs, pluginlib, rclcpp, rclcpp-components, rclpy, rosbag2, rosidl-runtime-py, sensor-msgs, tf2-geometry-msgs }:
buildRosPackage {
  pname = "ros-humble-novatel-oem7-driver";
  version = "20.8.0-r1";

  src = fetchurl {
    url = "https://github.com/novatel-gbp/novatel_oem7_driver-release/archive/release/humble/novatel_oem7_driver/20.8.0-1.tar.gz";
    name = "20.8.0-1.tar.gz";
    sha256 = "d876c7a3fda6dd166e2fd7630671a60d487cee9f26b33255d5fe14fa810542bd";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake boost git ];
  checkInputs = [ launch-testing launch-testing-ament-cmake launch-testing-ros rclpy rosbag2 rosidl-runtime-py ];
  propagatedBuildInputs = [ geographiclib gps-msgs nav-msgs nmea-msgs novatel-oem7-msgs pluginlib rclcpp rclcpp-components sensor-msgs tf2-geometry-msgs ];
  nativeBuildInputs = [ ament-cmake git ];

  meta = {
    description = "NovAtel Oem7 ROS Driver";
    license = with lib.licenses; [ mit ];
  };
}
