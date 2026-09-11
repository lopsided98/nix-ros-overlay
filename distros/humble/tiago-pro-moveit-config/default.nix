
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, ament-lint-common, launch-pal, moveit-configs-utils, moveit-kinematics, moveit-planners-chomp, moveit-planners-ompl, moveit-ros-control-interface, moveit-ros-move-group, moveit-ros-perception, moveit-ros-visualization, moveit-task-constructor-capabilities, pal-sea-arm-moveit-config, tiago-pro-description }:
buildRosPackage {
  pname = "ros-humble-tiago-pro-moveit-config";
  version = "1.5.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tiago_pro_moveit_config-release/archive/release/humble/tiago_pro_moveit_config/1.5.2-1.tar.gz";
    name = "1.5.2-1.tar.gz";
    sha256 = "8d67a8e0e2346f0d47f27374ae50918fb1df290cb4f3f1e843c87b2a2e848db7";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ launch-pal moveit-configs-utils moveit-kinematics moveit-planners-chomp moveit-planners-ompl moveit-ros-control-interface moveit-ros-move-group moveit-ros-perception moveit-ros-visualization moveit-task-constructor-capabilities pal-sea-arm-moveit-config tiago-pro-description ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = "An automatically generated package with all the configuration and launch files for using the tiago_pro with the MoveIt! Motion Planning Framework";
    license = with lib.licenses; [ asl20 ];
  };
}
