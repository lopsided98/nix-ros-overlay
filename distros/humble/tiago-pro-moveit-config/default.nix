
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, ament-lint-common, launch-pal, moveit-configs-utils, moveit-kinematics, moveit-planners-chomp, moveit-planners-ompl, moveit-ros-control-interface, moveit-ros-move-group, moveit-ros-perception, moveit-ros-visualization, moveit-task-constructor-capabilities, pal-sea-arm-moveit-config, tiago-pro-description }:
buildRosPackage {
  pname = "ros-humble-tiago-pro-moveit-config";
  version = "1.5.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tiago_pro_moveit_config-release/archive/release/humble/tiago_pro_moveit_config/1.5.1-1.tar.gz";
    name = "1.5.1-1.tar.gz";
    sha256 = "5088f292915da7122de63366d7fe4a67eb5ea3fba3a98c8747ddfbc34fb9fa25";
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
