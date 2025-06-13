
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, controller-manager, joint-state-publisher, joint-state-publisher-gui, moveit-configs-utils, moveit-kinematics, moveit-planners, moveit-ros-move-group, moveit-ros-visualization, moveit-ros-warehouse, moveit-setup-assistant, moveit-simple-controller-manager, open-manipulator-description, robot-state-publisher, rviz-common, rviz-default-plugins, rviz2, tf2-ros, xacro }:
buildRosPackage {
  pname = "ros-jazzy-open-manipulator-moveit-config";
  version = "3.2.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/open_manipulator-release/archive/release/jazzy/open_manipulator_moveit_config/3.2.4-1.tar.gz";
    name = "3.2.4-1.tar.gz";
    sha256 = "c9a9b726f63b2319fe16c7fa25622785bc0b845cebe9bc5a2fe3d98d2063c38e";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ controller-manager joint-state-publisher joint-state-publisher-gui moveit-configs-utils moveit-kinematics moveit-planners moveit-ros-move-group moveit-ros-visualization moveit-ros-warehouse moveit-setup-assistant moveit-simple-controller-manager open-manipulator-description robot-state-publisher rviz-common rviz-default-plugins rviz2 tf2-ros xacro ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "An automatically generated package with all the configuration and launch files for using the open_manipulator_x with the MoveIt Motion Planning Framework";
    license = with lib.licenses; [ asl20 ];
  };
}
