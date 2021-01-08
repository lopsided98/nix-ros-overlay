
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, joint-state-publisher, moveit-fake-controller-manager, moveit-kinematics, moveit-planners-ompl, moveit-ros-move-group, moveit-ros-visualization, moveit-setup-assistant, open-manipulator-description, robot-state-publisher, xacro }:
buildRosPackage {
  pname = "ros-kinetic-open-manipulator-moveit";
  version = "2.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ROBOTIS-GIT-release/open_manipulator-release/archive/release/kinetic/open_manipulator_moveit/2.0.1-1.tar.gz";
    name = "2.0.1-1.tar.gz";
    sha256 = "fb99fd604a00f14299c996ea55e8422f4c7d6aa6506fb0bf8c61c5f2a4c2d974";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ joint-state-publisher moveit-fake-controller-manager moveit-kinematics moveit-planners-ompl moveit-ros-move-group moveit-ros-visualization moveit-setup-assistant open-manipulator-description robot-state-publisher xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''An automatically generated package with all the configuration and launch files for using the open_manipulator with the MoveIt! Motion Planning Framework'';
    license = with lib.licenses; [ asl20 ];
  };
}
