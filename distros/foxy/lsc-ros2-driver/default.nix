
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, diagnostic-updater, rclcpp, sensor-msgs }:
buildRosPackage {
  pname = "ros-foxy-lsc-ros2-driver";
  version = "1.0.0-r10";

  src = fetchurl {
    url = "https://github.com/AutonicsLiDAR-release/lsc_ros2_driver-release/archive/release/foxy/lsc_ros2_driver/1.0.0-10.tar.gz";
    name = "1.0.0-10.tar.gz";
    sha256 = "886f88cbea772cbf6b794b944b00676d2ef24c0a0e2cf76c022002c9628b9358";
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
