
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, joint-state-publisher, moveit-fake-controller-manager, moveit-kinematics, moveit-planners-ompl, moveit-ros-move-group, moveit-ros-visualization, moveit-setup-assistant, open-manipulator-with-tb3-description, robot-state-publisher, xacro }:
buildRosPackage {
  pname = "ros-kinetic-open-manipulator-with-tb3-waffle-pi-moveit";
  version = "1.1.0";

  src = fetchurl {
    url = "https://github.com/ROBOTIS-GIT-release/open_manipulator_with_tb3-release/archive/release/kinetic/open_manipulator_with_tb3_waffle_pi_moveit/1.1.0-0.tar.gz";
    name = "1.1.0-0.tar.gz";
    sha256 = "10973317b1707b23614d154c82a20ba22146fd066b8660f67575d8b8fe598223";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ joint-state-publisher moveit-fake-controller-manager moveit-kinematics moveit-planners-ompl moveit-ros-move-group moveit-ros-visualization moveit-setup-assistant open-manipulator-with-tb3-description robot-state-publisher xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''An automatically generated package with all the configuration and launch files for using the om_with_tb3 with the MoveIt! Motion Planning Framework'';
    license = with lib.licenses; [ asl20 ];
  };
}
