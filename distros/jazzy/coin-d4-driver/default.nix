
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, geometry-msgs, rclcpp, rclcpp-lifecycle, sensor-msgs }:
buildRosPackage {
  pname = "ros-jazzy-coin-d4-driver";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/coin_d4_driver-release/archive/release/jazzy/coin_d4_driver/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "05d10ad8d36317d6b2209fafc4d834ee536812a958675d7406827f50ad7a9f02";
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
