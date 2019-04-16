
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, moveit-fake-controller-manager, moveit-ros-move-group, moveit-ros-visualization, catkin, moveit-kinematics, rostest, rviz, khi-rs-description, robot-state-publisher, roslaunch, tf, joint-state-publisher, xacro, moveit-planners-ompl }:
buildRosPackage {
  pname = "ros-kinetic-khi-rs007l-moveit-config";
  version = "1.1.0-r1";

  src = fetchurl {
    url = https://github.com/Kawasaki-Robotics/khi_robot-release/archive/release/kinetic/khi_rs007l_moveit_config/1.1.0-1.tar.gz;
    sha256 = "390c049f55197544e037d5423a911dd05614b04b16bc47a416b0277a2dc94087";
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
