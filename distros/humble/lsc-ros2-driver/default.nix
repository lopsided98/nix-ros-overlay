
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, diagnostic-updater, rclcpp, sensor-msgs }:
buildRosPackage {
  pname = "ros-humble-lsc-ros2-driver";
  version = "1.0.0-r2";

  src = fetchurl {
    url = "https://github.com/AutonicsLiDAR-release/lsc_ros2_driver-release/archive/release/humble/lsc_ros2_driver/1.0.0-2.tar.gz";
    name = "1.0.0-2.tar.gz";
    sha256 = "1c59950825906d29f11e58275fabd6bd399d22dc2d609a46381143864d4ac872";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ diagnostic-updater rclcpp sensor-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''ROS2 driver package for Autonics LSC Series'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
