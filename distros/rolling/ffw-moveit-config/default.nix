
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, controller-manager, joint-state-publisher, joint-state-publisher-gui, moveit-configs-utils, moveit-kinematics, moveit-planners, moveit-ros-move-group, moveit-ros-visualization, moveit-setup-assistant, moveit-simple-controller-manager, robot-state-publisher, rviz-common, rviz-default-plugins, rviz2, tf2-ros, xacro }:
buildRosPackage {
  pname = "ros-rolling-ffw-moveit-config";
  version = "1.1.14-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ai_worker-release/archive/release/rolling/ffw_moveit_config/1.1.14-2.tar.gz";
    name = "1.1.14-2.tar.gz";
    sha256 = "b6d6f667612ee2738dff7dbc14408ea45aebc7e7e8a5535b26121203a5e31dce";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ controller-manager joint-state-publisher joint-state-publisher-gui moveit-configs-utils moveit-kinematics moveit-planners moveit-ros-move-group moveit-ros-visualization moveit-setup-assistant moveit-simple-controller-manager robot-state-publisher rviz-common rviz-default-plugins rviz2 tf2-ros xacro ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "An automatically generated package with all the configuration and launch files for using the ffw with the MoveIt Motion Planning Framework";
    license = with lib.licenses; [ asl20 ];
  };
}
