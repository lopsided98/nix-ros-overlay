
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, geometry-msgs, graph-msgs, moveit-common, moveit-core, moveit-ros-planning, rclcpp, rviz-visual-tools, std-msgs, tf2-eigen, tf2-ros, trajectory-msgs, visualization-msgs }:
buildRosPackage {
  pname = "ros-kilted-moveit-visual-tools";
  version = "4.1.2-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/moveit_visual_tools-release/archive/release/kilted/moveit_visual_tools/4.1.2-2.tar.gz";
    name = "4.1.2-2.tar.gz";
    sha256 = "92ec9d74e14d7292340cc8946072e47ecc3b28af570731a789373326bed67e96";
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
