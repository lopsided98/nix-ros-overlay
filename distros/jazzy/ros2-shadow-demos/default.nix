
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, geometry-msgs, nav-msgs, nav2-bringup, nav2-lifecycle-manager, nav2-map-server, nav2-msgs, nav2-planner, rclpy, ros2-shadow, tf2-ros, visualization-msgs }:
buildRosPackage {
  pname = "ros-jazzy-ros2-shadow-demos";
  version = "0.1.0-r1";

  src = fetchurl {
    url = "https://github.com/catplotlib/ros2_shadow-release/archive/release/jazzy/ros2_shadow_demos/0.1.0-1.tar.gz";
    name = "0.1.0-1.tar.gz";
    sha256 = "857be4051d50277be696eb436c518e7b8097804f557a5697be93c4ab76445bbf";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ geometry-msgs nav-msgs nav2-bringup nav2-lifecycle-manager nav2-map-server nav2-msgs nav2-planner rclpy ros2-shadow tf2-ros visualization-msgs ];

  meta = {
    description = "Runnable demonstrations of ros2_shadow, including two Nav2 planners compared live on one map.";
    license = with lib.licenses; [ mit ];
  };
}
