
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ardrone-sdk, cv-bridge, opencv, rclcpp, sensor-msgs }:
buildRosPackage {
  pname = "ros-rolling-ardrone-sumo";
  version = "2.0.3-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ardrone_ros-release/archive/release/rolling/ardrone_sumo/2.0.3-2.tar.gz";
    name = "2.0.3-2.tar.gz";
    sha256 = "6e69d677ff5d7c92b7480a5f7d9a05e5a8593b441ff7f85c2e236abff0d99bf8";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ ardrone-sdk cv-bridge opencv opencv.cxxdev rclcpp sensor-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Control the Parrot JumpingSumo drone via ROS2 topics";
    license = with lib.licenses; [ asl20 ];
  };
}
