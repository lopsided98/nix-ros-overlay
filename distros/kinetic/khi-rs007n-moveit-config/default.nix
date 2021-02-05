
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, joint-state-publisher, khi-rs-description, moveit-fake-controller-manager, moveit-kinematics, moveit-planners-ompl, moveit-ros-move-group, moveit-ros-visualization, robot-state-publisher, roslaunch, rostest, rviz, tf, xacro }:
buildRosPackage {
  pname = "ros-kinetic-khi-rs007n-moveit-config";
  version = "1.2.0-r5";

  src = fetchurl {
    url = "https://github.com/Kawasaki-Robotics/khi_robot-release/archive/release/kinetic/khi_rs007n_moveit_config/1.2.0-5.tar.gz";
    name = "1.2.0-5.tar.gz";
    sha256 = "46a4ba259ae9e226a0870019c0f41341d948a6ef297481d8770dc5c20b5d1c7c";
  };

  buildType = "catkin";
  checkInputs = [ roslaunch rostest ];
  propagatedBuildInputs = [ joint-state-publisher khi-rs-description moveit-fake-controller-manager moveit-kinematics moveit-planners-ompl moveit-ros-move-group moveit-ros-visualization robot-state-publisher rviz tf xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''An automatically generated package with all the configuration and launch files for using the khi_rs007n with the MoveIt! Motion Planning Framework'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
