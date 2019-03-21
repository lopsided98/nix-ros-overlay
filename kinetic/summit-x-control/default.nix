
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ros-control, summit-x-description, catkin, robot-state-publisher, summit-xl-pad, ros-controllers }:
buildRosPackage {
  pname = "ros-kinetic-summit-x-control";
  version = "1.1.1";

  src = fetchurl {
    url = https://github.com/RobotnikAutomation/summit_x_sim-release/archive/release/kinetic/summit_x_control/1.1.1-0.tar.gz;
    sha256 = "d0db35c688ea68f4565c3e3e5a48b10f60b11b05138644b7735fb87660a593f6";
  };

  propagatedBuildInputs = [ robot-state-publisher ros-control summit-x-description summit-xl-pad ros-controllers ];
  nativeBuildInputs = [ robot-state-publisher ros-control summit-x-description catkin summit-xl-pad ros-controllers ];

  meta = {
    description = ''This package contains the launch files that load the required controller interfaces for simulation in Gazebo.'';
    #license = lib.licenses.BSD;
  };
}
