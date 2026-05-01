
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ardrone-sdk, cv-bridge, opencv, rclcpp, sensor-msgs }:
buildRosPackage {
  pname = "ros-lyrical-ardrone-sumo";
  version = "2.0.3-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ardrone_ros-release/archive/release/lyrical/ardrone_sumo/2.0.3-3.tar.gz";
    name = "2.0.3-3.tar.gz";
    sha256 = "52cc52a2cd5404f525953a203edc296fb615dfaea3afd1a1d6cbf947dd8ddc60";
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
