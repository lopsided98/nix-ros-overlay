
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-index-cpp, ament-lint-auto, ament-lint-common, geometric-shapes, geometry-msgs, graph-msgs, interactive-markers, moveit-common, moveit-core, moveit-msgs, moveit-ros-planning, rclcpp, rviz-visual-tools, std-msgs, tf2-eigen, tf2-ros, trajectory-msgs, visualization-msgs }:
buildRosPackage {
  pname = "ros-jazzy-moveit-visual-tools";
  version = "4.2.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/moveit_visual_tools-release/archive/release/jazzy/moveit_visual_tools/4.2.0-1.tar.gz";
    name = "4.2.0-1.tar.gz";
    sha256 = "928216f3328521c740303d661f47106ee9c151257cd151a7c9ca2fcbbeb09dd4";
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
