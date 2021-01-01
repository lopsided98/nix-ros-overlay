
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, robot-state-publisher, ros-control, ros-controllers, summit-x-description, summit-xl-pad }:
buildRosPackage {
  pname = "ros-kinetic-summit-x-control";
  version = "1.1.1";

  src = fetchurl {
    url = "https://github.com/RobotnikAutomation/summit_x_sim-release/archive/release/kinetic/summit_x_control/1.1.1-0.tar.gz";
    name = "1.1.1-0.tar.gz";
    sha256 = "d0db35c688ea68f4565c3e3e5a48b10f60b11b05138644b7735fb87660a593f6";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ robot-state-publisher ros-control ros-controllers summit-x-description summit-xl-pad ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains the launch files that load the required controller interfaces for simulation in Gazebo.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
