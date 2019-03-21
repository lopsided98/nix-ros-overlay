
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, moveit-fake-controller-manager, moveit-ros-move-group, moveit-ros-visualization, catkin, moveit-kinematics, rostest, duaro-description, moveit-simple-controller-manager, robot-state-publisher, roslaunch, tf, joint-state-publisher, xacro, moveit-planners-ompl }:
buildRosPackage {
  pname = "ros-kinetic-duaro-moveit-config";
  version = "1.0.0";

  src = fetchurl {
    url = https://github.com/Kawasaki-Robotics/khi_robot-release/archive/release/kinetic/duaro_moveit_config/1.0.0-0.tar.gz;
    sha256 = "9bd0a4579bbbf006fe8c3301a88a869afd4511709f2444e04b803fd8f6edca4a";
  };

  checkInputs = [ rostest roslaunch ];
  propagatedBuildInputs = [ moveit-fake-controller-manager moveit-ros-move-group moveit-ros-visualization moveit-kinematics duaro-description moveit-simple-controller-manager robot-state-publisher tf joint-state-publisher xacro moveit-planners-ompl ];
  nativeBuildInputs = [ duaro-description catkin ];

  meta = {
    description = ''An automatically generated package with all the configuration and launch files for using the duaro with the MoveIt! Motion Planning Framework'';
    #license = lib.licenses.BSD;
  };
}
