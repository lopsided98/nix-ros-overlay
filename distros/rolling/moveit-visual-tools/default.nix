
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, geometry-msgs, graph-msgs, moveit-common, moveit-core, moveit-ros-planning, rclcpp, rviz-visual-tools, std-msgs, tf2-eigen, tf2-ros, trajectory-msgs, visualization-msgs }:
buildRosPackage {
  pname = "ros-rolling-moveit-visual-tools";
  version = "4.1.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/moveit_visual_tools-release/archive/release/rolling/moveit_visual_tools/4.1.0-3.tar.gz";
    name = "4.1.0-3.tar.gz";
    sha256 = "8e0b6828004754466f15d66f63ad56dbe0d436278b421c781e9e72ca124e2720";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ geometry-msgs graph-msgs moveit-common moveit-core moveit-ros-planning rclcpp rviz-visual-tools std-msgs tf2-eigen tf2-ros trajectory-msgs visualization-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Helper functions for displaying and debugging MoveIt data in Rviz via published markers";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
