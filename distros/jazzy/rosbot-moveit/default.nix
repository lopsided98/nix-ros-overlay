
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, controller-manager, joint-state-publisher, joint-state-publisher-gui, moveit-configs-utils, moveit-kinematics, moveit-planners, moveit-ros-move-group, moveit-ros-visualization, moveit-servo, moveit-setup-assistant, moveit-simple-controller-manager, rosbot-description, rosbot-joy, rviz-common, rviz-default-plugins, rviz2, tf2-ros, xacro }:
buildRosPackage {
  pname = "ros-jazzy-rosbot-moveit";
  version = "0.18.6-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbot_ros-release/archive/release/jazzy/rosbot_moveit/0.18.6-1.tar.gz";
    name = "0.18.6-1.tar.gz";
    sha256 = "ae53a9a9e5138b0839475da9c7c184a7582cf6ba4d58b5c855e0fee203e49974";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ controller-manager joint-state-publisher joint-state-publisher-gui moveit-configs-utils moveit-kinematics moveit-planners moveit-ros-move-group moveit-ros-visualization moveit-servo moveit-setup-assistant moveit-simple-controller-manager rosbot-description rosbot-joy rviz-common rviz-default-plugins rviz2 tf2-ros xacro ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "An automatically generated package with all the configuration and launch files for using the rosbot_xl with the MoveIt Motion Planning Framework";
    license = with lib.licenses; [ bsd3 ];
  };
}
