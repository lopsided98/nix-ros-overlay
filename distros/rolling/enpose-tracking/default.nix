
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, cargo, geometry-msgs, git, rclcpp, tf2, tf2-geometry-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-rolling-enpose-tracking";
  version = "0.2.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/enpose-ros-release/archive/release/rolling/enpose_tracking/0.2.1-1.tar.gz";
    name = "0.2.1-1.tar.gz";
    sha256 = "34a38b7d847d89f1fc7db9a55117e5fd8a3ff2113ad064639689a09c8bf274e7";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake cargo git ];
  propagatedBuildInputs = [ geometry-msgs rclcpp tf2 tf2-geometry-msgs tf2-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "ROS2 node for the Enpose 6-DoF optical marker tracking system.
    Connects to an Enpose sensor, streams marker poses, and publishes them as
    PoseStamped messages and TF transforms.";
    license = with lib.licenses; [ mit ];
  };
}
