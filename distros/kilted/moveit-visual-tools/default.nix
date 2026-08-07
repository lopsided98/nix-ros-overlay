
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-index-cpp, ament-lint-auto, ament-lint-common, geometric-shapes, geometry-msgs, graph-msgs, interactive-markers, moveit-common, moveit-core, moveit-msgs, moveit-ros-planning, rclcpp, rviz-visual-tools, std-msgs, tf2-eigen, tf2-ros, trajectory-msgs, visualization-msgs }:
buildRosPackage {
  pname = "ros-kilted-moveit-visual-tools";
  version = "4.2.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/moveit_visual_tools-release/archive/release/kilted/moveit_visual_tools/4.2.0-1.tar.gz";
    name = "4.2.0-1.tar.gz";
    sha256 = "2bd581e8aa10e0e9c0224bc8b98462e9ee51f73f1f5b949eb87b3d96b9a007ff";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ament-index-cpp geometric-shapes geometry-msgs graph-msgs interactive-markers moveit-common moveit-core moveit-msgs moveit-ros-planning rclcpp rviz-visual-tools std-msgs tf2-eigen tf2-ros trajectory-msgs visualization-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Helper functions for displaying and debugging MoveIt data in Rviz via published markers";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
