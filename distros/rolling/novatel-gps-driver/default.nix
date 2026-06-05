
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-index-cpp, ament-lint-auto, boost, diagnostic-msgs, diagnostic-updater, gps-msgs, libpcap, nav-msgs, novatel-gps-msgs, rclcpp, rclcpp-components, sensor-msgs, std-msgs, swri-math-util, swri-roscpp, swri-serial-util, tf2, tf2-geometry-msgs }:
buildRosPackage {
  pname = "ros-rolling-novatel-gps-driver";
  version = "4.3.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/novatel_gps_driver-release/archive/release/rolling/novatel_gps_driver/4.3.0-1.tar.gz";
    name = "4.3.0-1.tar.gz";
    sha256 = "6892034c6f9b3d25995c63544de994dd6e605023c485f7def5d2a854bb17823b";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ament-index-cpp ament-lint-auto ];
  propagatedBuildInputs = [ boost diagnostic-msgs diagnostic-updater gps-msgs libpcap nav-msgs novatel-gps-msgs rclcpp rclcpp-components sensor-msgs std-msgs swri-math-util swri-roscpp swri-serial-util tf2 tf2-geometry-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Driver for NovAtel receivers";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
