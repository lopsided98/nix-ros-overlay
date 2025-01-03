
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, diagnostic-updater, rclcpp, sensor-msgs }:
buildRosPackage {
  pname = "ros-humble-lsc-ros2-driver";
  version = "1.0.2-r1";

  src = fetchurl {
    url = "https://github.com/AutonicsLiDAR-release/lsc_ros2_driver-release/archive/release/humble/lsc_ros2_driver/1.0.2-1.tar.gz";
    name = "1.0.2-1.tar.gz";
    sha256 = "201027620f2d6c7aaa7c15943446fd1bf4e3292e6f2c55bbb05afd1fb47e830c";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ diagnostic-updater rclcpp sensor-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "ROS2 driver package for Autonics LSC Series";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
