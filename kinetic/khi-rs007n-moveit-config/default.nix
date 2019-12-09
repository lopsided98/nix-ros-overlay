
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, moveit-planners-ompl, joint-state-publisher, xacro, robot-state-publisher, moveit-ros-move-group, tf, catkin, rviz, moveit-ros-visualization, moveit-kinematics, roslaunch, rostest, moveit-fake-controller-manager, khi-rs-description }:
buildRosPackage {
  pname = "ros-kinetic-khi-rs007n-moveit-config";
  version = "1.1.2-r1";

  src = fetchurl {
    url = "https://github.com/Kawasaki-Robotics/khi_robot-release/archive/release/kinetic/khi_rs007n_moveit_config/1.1.2-1.tar.gz";
    name = "1.1.2-1.tar.gz";
    sha256 = "3e6de855e5f31817ccd1cd379ebab47fb9ebda7af634e98dbeed11697c9d7650";
  };

  buildType = "catkin";
  buildInputs = [ khi-rs-description ];
  checkInputs = [ roslaunch rostest ];
  propagatedBuildInputs = [ moveit-planners-ompl joint-state-publisher xacro robot-state-publisher moveit-ros-move-group tf rviz moveit-ros-visualization moveit-kinematics moveit-fake-controller-manager khi-rs-description ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''An automatically generated package with all the configuration and launch files for using the khi_rs007n with the MoveIt! Motion Planning Framework'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
