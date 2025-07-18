
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ardrone-sdk, cv-bridge, opencv, rclcpp, sensor-msgs }:
buildRosPackage {
  pname = "ros-rolling-ardrone-sumo";
  version = "1.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ardrone_ros-release/archive/release/rolling/ardrone_sumo/1.1.0-1.tar.gz";
    name = "1.1.0-1.tar.gz";
    sha256 = "048fd5992bf52bcb259ed952768b336123b01027d7c04ac94b4b1e4418341706";
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
