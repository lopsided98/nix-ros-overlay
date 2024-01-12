
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, geometry-msgs, graph-msgs, moveit-common, moveit-core, moveit-ros-planning, rclcpp, rviz-visual-tools, std-msgs, tf2-eigen, tf2-ros, trajectory-msgs, visualization-msgs }:
buildRosPackage {
  pname = "ros-rolling-moveit-visual-tools";
  version = "4.1.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/moveit_visual_tools-release/archive/release/rolling/moveit_visual_tools/4.1.0-2.tar.gz";
    name = "4.1.0-2.tar.gz";
    sha256 = "9eb5979cba4f4997bed7c07c96760dfcd65c5005c71f4d764347309cef5d2336";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ geometry-msgs graph-msgs moveit-common moveit-core moveit-ros-planning rclcpp rviz-visual-tools std-msgs tf2-eigen tf2-ros trajectory-msgs visualization-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Helper functions for displaying and debugging MoveIt data in Rviz via published markers'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
