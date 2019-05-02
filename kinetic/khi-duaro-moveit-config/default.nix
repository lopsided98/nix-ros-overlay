
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, moveit-fake-controller-manager, moveit-ros-move-group, moveit-ros-visualization, catkin, moveit-kinematics, rostest, moveit-simple-controller-manager, rviz, robot-state-publisher, roslaunch, tf, joint-state-publisher, xacro, khi-duaro-description, moveit-planners-ompl }:
buildRosPackage {
  pname = "ros-kinetic-khi-duaro-moveit-config";
  version = "1.1.1-r1";

  src = fetchurl {
    url = https://github.com/Kawasaki-Robotics/khi_robot-release/archive/release/kinetic/khi_duaro_moveit_config/1.1.1-1.tar.gz;
    sha256 = "bdaa4d251d3bd72952b35d044ceea0370cea12caf6a485ad5f2e0bc5409e2919";
  };

  buildInputs = [ khi-duaro-description ];
  checkInputs = [ rostest roslaunch ];
  propagatedBuildInputs = [ moveit-fake-controller-manager moveit-ros-move-group moveit-ros-visualization moveit-kinematics moveit-simple-controller-manager rviz robot-state-publisher tf joint-state-publisher xacro khi-duaro-description moveit-planners-ompl ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''An automatically generated package with all the configuration and launch files for using the khi_duaro with the MoveIt! Motion Planning Framework'';
    #license = lib.licenses.BSD;
  };
}
