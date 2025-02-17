
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, chomp-motion-planner, moveit-common, moveit-core, pluginlib, rclcpp }:
buildRosPackage {
  pname = "ros-humble-moveit-planners-chomp";
  version = "2.5.8-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/moveit2-release/archive/release/humble/moveit_planners_chomp/2.5.8-1.tar.gz";
    name = "2.5.8-1.tar.gz";
    sha256 = "a8c826d27722acad0916d8c73ebe3c839383512e347cae881c5f1e5515227489";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ chomp-motion-planner moveit-common moveit-core pluginlib rclcpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "The interface for using CHOMP within MoveIt";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
