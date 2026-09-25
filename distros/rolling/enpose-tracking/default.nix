
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, cargo, geometry-msgs, git, rclcpp, tf2, tf2-geometry-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-rolling-enpose-tracking";
  version = "0.2.0-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/enpose-ros-release/archive/release/rolling/enpose_tracking/0.2.0-4.tar.gz";
    name = "0.2.0-4.tar.gz";
    sha256 = "d89e62f15aa4442c4ed578644e71ceb6e543e1741de090b0a2a67ec9e20b46e0";
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
