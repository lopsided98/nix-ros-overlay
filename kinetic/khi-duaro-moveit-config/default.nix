
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, khi-duaro-description, joint-state-publisher, moveit-planners-ompl, xacro, robot-state-publisher, moveit-ros-move-group, moveit-simple-controller-manager, tf, catkin, rviz, moveit-ros-visualization, moveit-kinematics, roslaunch, rostest, moveit-fake-controller-manager }:
buildRosPackage {
  pname = "ros-kinetic-khi-duaro-moveit-config";
  version = "1.1.2-r1";

  src = fetchurl {
    url = "https://github.com/Kawasaki-Robotics/khi_robot-release/archive/release/kinetic/khi_duaro_moveit_config/1.1.2-1.tar.gz";
    name = "1.1.2-1.tar.gz";
    sha256 = "49163da73b919add96090f4f1f290dbd8b941a335ea169937312b75863ec3bbe";
  };

  buildType = "catkin";
  buildInputs = [ khi-duaro-description ];
  checkInputs = [ roslaunch rostest ];
  propagatedBuildInputs = [ moveit-planners-ompl joint-state-publisher khi-duaro-description xacro robot-state-publisher moveit-ros-move-group moveit-simple-controller-manager tf rviz moveit-ros-visualization moveit-kinematics moveit-fake-controller-manager ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''An automatically generated package with all the configuration and launch files for using the khi_duaro with the MoveIt! Motion Planning Framework'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
