
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, geometry-msgs, graph-msgs, moveit-common, moveit-core, moveit-ros-planning, rclcpp, rviz-visual-tools, std-msgs, tf2-eigen, tf2-ros, trajectory-msgs, visualization-msgs }:
buildRosPackage {
  pname = "ros-iron-moveit-visual-tools";
  version = "4.1.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/moveit_visual_tools-release/archive/release/iron/moveit_visual_tools/4.1.0-3.tar.gz";
    name = "4.1.0-3.tar.gz";
    sha256 = "e6eb24a0b11137b342c9a78e313abb4f0a46e6b05281612aef7eb0736a4170bf";
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
