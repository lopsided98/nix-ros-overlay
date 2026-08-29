
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-index-cpp, ament-lint-auto, boost, diagnostic-msgs, diagnostic-updater, gps-msgs, libpcap, nav-msgs, novatel-gps-msgs, rclcpp, rclcpp-components, sensor-msgs, std-msgs, swri-math-util, swri-serial-util, tf2, tf2-geometry-msgs }:
buildRosPackage {
  pname = "ros-rolling-novatel-gps-driver";
  version = "5.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/novatel_gps_driver-release/archive/release/rolling/novatel_gps_driver/5.0.0-1.tar.gz";
    name = "5.0.0-1.tar.gz";
    sha256 = "00e237343451c81c77307dcb49c70ed1c1ff23d96a636eec5d84a9c74de60b79";
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
