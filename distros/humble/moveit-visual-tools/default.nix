
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-index-cpp, ament-lint-auto, ament-lint-common, geometric-shapes, geometry-msgs, graph-msgs, interactive-markers, moveit-common, moveit-core, moveit-msgs, moveit-ros-planning, rclcpp, rviz-visual-tools, std-msgs, tf2-eigen, tf2-ros, trajectory-msgs, visualization-msgs }:
buildRosPackage {
  pname = "ros-humble-moveit-visual-tools";
  version = "4.2.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/moveit_visual_tools-release/archive/release/humble/moveit_visual_tools/4.2.0-1.tar.gz";
    name = "4.2.0-1.tar.gz";
    sha256 = "59247553632a69c70e2163d99abac8a12c32e0703528fdc572abb1e31efcd301";
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
