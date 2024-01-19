
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-index-cpp, ament-lint-auto, boost, diagnostic-msgs, diagnostic-updater, gps-msgs, libpcap, nav-msgs, novatel-gps-msgs, rclcpp, rclcpp-components, sensor-msgs, std-msgs, swri-math-util, swri-roscpp, swri-serial-util, tf2, tf2-geometry-msgs }:
buildRosPackage {
  pname = "ros-humble-novatel-gps-driver";
  version = "4.1.1-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/novatel_gps_driver-release/archive/release/humble/novatel_gps_driver/4.1.1-2.tar.gz";
    name = "4.1.1-2.tar.gz";
    sha256 = "78d486865936a2f02e99fa9fea1bb0c39243ee9677bfd6021907f7cee4e21bbb";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ament-index-cpp ament-lint-auto ];
  propagatedBuildInputs = [ boost diagnostic-msgs diagnostic-updater gps-msgs libpcap nav-msgs novatel-gps-msgs rclcpp rclcpp-components sensor-msgs std-msgs swri-math-util swri-roscpp swri-serial-util tf2 tf2-geometry-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Driver for NovAtel receivers'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
