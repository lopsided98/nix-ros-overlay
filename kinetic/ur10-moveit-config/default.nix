
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, moveit-fake-controller-manager, moveit-ros-move-group, moveit-ros-visualization, ur-description, catkin, moveit-simple-controller-manager, robot-state-publisher, roslaunch, joint-state-publisher, xacro, moveit-planners-ompl }:
buildRosPackage {
  pname = "ros-kinetic-ur10-moveit-config";
  version = "1.2.5";

  src = fetchurl {
    url = https://github.com/ros-industrial-release/universal_robot-release/archive/release/kinetic/ur10_moveit_config/1.2.5-0.tar.gz;
    sha256 = "0699fb713561c6f1c856bb8b89db0bfc3bf930f414abcbc6841ca55b51e99372";
  };

  buildInputs = [ ur-description ];
  checkInputs = [ roslaunch ];
  propagatedBuildInputs = [ moveit-fake-controller-manager moveit-ros-move-group moveit-ros-visualization ur-description moveit-simple-controller-manager robot-state-publisher joint-state-publisher xacro moveit-planners-ompl ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''An automatically generated package with all the configuration and launch files for using the ur10 with the MoveIt Motion Planning Framework'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
