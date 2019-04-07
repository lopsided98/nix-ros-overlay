
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, moveit-fake-controller-manager, moveit-ros-move-group, moveit-ros-visualization, rs-description, moveit-kinematics, catkin, rostest, robot-state-publisher, roslaunch, tf, joint-state-publisher, xacro, moveit-planners-ompl }:
buildRosPackage {
  pname = "ros-kinetic-rs007n-moveit-config";
  version = "1.0.0";

  src = fetchurl {
    url = https://github.com/Kawasaki-Robotics/khi_robot-release/archive/release/kinetic/rs007n_moveit_config/1.0.0-0.tar.gz;
    sha256 = "88285eaecbcb5fa5203bfb730b34b14f1af8721efe571db7b6cb6887db8c1f3b";
  };

  buildInputs = [ rs-description ];
  checkInputs = [ rostest roslaunch ];
  propagatedBuildInputs = [ moveit-fake-controller-manager moveit-ros-move-group moveit-ros-visualization tf moveit-kinematics robot-state-publisher rs-description joint-state-publisher xacro moveit-planners-ompl ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''An automatically generated package with all the configuration and launch files for using the rs007n with the MoveIt! Motion Planning Framework'';
    #license = lib.licenses.BSD;
  };
}
