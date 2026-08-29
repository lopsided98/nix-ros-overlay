
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-index-cpp, ament-lint-auto, boost, diagnostic-msgs, diagnostic-updater, gps-msgs, libpcap, nav-msgs, novatel-gps-msgs, rclcpp, rclcpp-components, sensor-msgs, std-msgs, swri-math-util, swri-serial-util, tf2, tf2-geometry-msgs }:
buildRosPackage {
  pname = "ros-lyrical-novatel-gps-driver";
  version = "4.3.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/novatel_gps_driver-release/archive/release/lyrical/novatel_gps_driver/4.3.1-1.tar.gz";
    name = "4.3.1-1.tar.gz";
    sha256 = "a8b43fa02befdcee9260c1bcefda96d43af1a1d9f011eccc1482aba3ffaab2a5";
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
