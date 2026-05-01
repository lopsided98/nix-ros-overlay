
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, geometry-msgs, rclcpp, rclcpp-lifecycle, sensor-msgs }:
buildRosPackage {
  pname = "ros-lyrical-coin-d4-driver";
  version = "1.0.1-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/coin_d4_driver-release/archive/release/lyrical/coin_d4_driver/1.0.1-3.tar.gz";
    name = "1.0.1-3.tar.gz";
    sha256 = "737bf96e0f852120c2a409e136baddea39dcb63f158551b5016375ed402b701e";
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
