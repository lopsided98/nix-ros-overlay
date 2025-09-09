
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, geometry-msgs, rclcpp, rclcpp-lifecycle, sensor-msgs }:
buildRosPackage {
  pname = "ros-jazzy-coin-d4-driver";
  version = "1.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/coin_d4_driver-release/archive/release/jazzy/coin_d4_driver/1.0.1-1.tar.gz";
    name = "1.0.1-1.tar.gz";
    sha256 = "9e4b6eb274888024db2b95d19fd89ba4078530eb4567c172ca39b5133da97bac";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ geometry-msgs rclcpp rclcpp-lifecycle sensor-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "ROS package for LDS-03 (COIN-D4) Lidar";
    license = with lib.licenses; [ asl20 ];
  };
}
