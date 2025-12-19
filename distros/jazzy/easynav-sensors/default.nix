
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, easynav-common, pcl-conversions, rclcpp, rclcpp-lifecycle, sensor-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-jazzy-easynav-sensors";
  version = "0.2.2-r1";

  src = fetchurl {
    url = "https://github.com/EasyNavigation/EasyNavigation-release/archive/release/jazzy/easynav_sensors/0.2.2-1.tar.gz";
    name = "0.2.2-1.tar.gz";
    sha256 = "38a914811f1abe2ca03f96cbef06372a41dc6e383875c88321e24f23a6014c2d";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common pcl-conversions ];
  propagatedBuildInputs = [ easynav-common rclcpp rclcpp-lifecycle sensor-msgs tf2-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Easy Navigation: Sensors package.";
    license = with lib.licenses; [ gpl3Only ];
  };
}
