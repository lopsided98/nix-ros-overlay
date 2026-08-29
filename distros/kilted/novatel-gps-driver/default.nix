
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-index-cpp, ament-lint-auto, boost, diagnostic-msgs, diagnostic-updater, gps-msgs, libpcap, nav-msgs, novatel-gps-msgs, rclcpp, rclcpp-components, sensor-msgs, std-msgs, swri-math-util, swri-serial-util, tf2, tf2-geometry-msgs }:
buildRosPackage {
  pname = "ros-kilted-novatel-gps-driver";
  version = "4.3.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/novatel_gps_driver-release/archive/release/kilted/novatel_gps_driver/4.3.1-1.tar.gz";
    name = "4.3.1-1.tar.gz";
    sha256 = "b15f52e04828d21cf4e38f6fd9aa4f87f6a614d6426488c6351568cd44134fdd";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ament-index-cpp ament-lint-auto ];
  propagatedBuildInputs = [ boost diagnostic-msgs diagnostic-updater gps-msgs libpcap nav-msgs novatel-gps-msgs rclcpp rclcpp-components sensor-msgs std-msgs swri-math-util swri-serial-util tf2 tf2-geometry-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Driver for NovAtel receivers";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
