
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, controller-manager, joint-state-publisher, joint-state-publisher-gui, moveit-configs-utils, moveit-kinematics, moveit-planners, moveit-ros-move-group, moveit-ros-visualization, moveit-ros-warehouse, moveit-setup-assistant, moveit-simple-controller-manager, open-manipulator-description, robot-state-publisher, rviz-common, rviz-default-plugins, rviz2, tf2-ros, warehouse-ros-sqlite, xacro }:
buildRosPackage {
  pname = "ros-jazzy-open-manipulator-moveit-config";
  version = "4.0.7-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/open_manipulator-release/archive/release/jazzy/open_manipulator_moveit_config/4.0.7-1.tar.gz";
    name = "4.0.7-1.tar.gz";
    sha256 = "741a18907ac8f8a3e59550f18cb76cb4c4e3ca962c4a98995a80bfcda49cdb77";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ controller-manager joint-state-publisher joint-state-publisher-gui moveit-configs-utils moveit-kinematics moveit-planners moveit-ros-move-group moveit-ros-visualization moveit-ros-warehouse moveit-setup-assistant moveit-simple-controller-manager open-manipulator-description robot-state-publisher rviz-common rviz-default-plugins rviz2 tf2-ros warehouse-ros-sqlite xacro ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "An automatically generated package with all the configuration and launch files for using the open_manipulator_x with the MoveIt Motion Planning Framework";
    license = with lib.licenses; [ asl20 ];
  };
}
