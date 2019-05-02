
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, moveit-fake-controller-manager, moveit-ros-move-group, moveit-ros-visualization, catkin, moveit-kinematics, rostest, rviz, khi-rs-description, robot-state-publisher, roslaunch, tf, joint-state-publisher, xacro, moveit-planners-ompl }:
buildRosPackage {
  pname = "ros-kinetic-khi-rs007l-moveit-config";
  version = "1.1.1-r1";

  src = fetchurl {
    url = https://github.com/Kawasaki-Robotics/khi_robot-release/archive/release/kinetic/khi_rs007l_moveit_config/1.1.1-1.tar.gz;
    sha256 = "4a637870a02fd0fd504df647819b462888ec36a67f31fcd1f3c43708b144636d";
  };

  buildInputs = [ khi-rs-description ];
  checkInputs = [ rostest roslaunch ];
  propagatedBuildInputs = [ moveit-fake-controller-manager moveit-ros-move-group moveit-ros-visualization moveit-kinematics moveit-planners-ompl rviz robot-state-publisher tf joint-state-publisher xacro khi-rs-description ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''An automatically generated package with all the configuration and launch files for using the khi_rs007l with the MoveIt! Motion Planning Framework'';
    #license = lib.licenses.BSD;
  };
}
