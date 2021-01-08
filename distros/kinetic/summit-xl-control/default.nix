
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, robot-state-publisher, ros-control, ros-controllers, summit-xl-pad }:
buildRosPackage {
  pname = "ros-kinetic-summit-xl-control";
  version = "1.1.1";

  src = fetchurl {
    url = "https://github.com/RobotnikAutomation/summit_xl_sim-release/archive/release/kinetic/summit_xl_control/1.1.1-0.tar.gz";
    name = "1.1.1-0.tar.gz";
    sha256 = "c397fc2bf83aa6590374475bc27165b34c01537f5331c39a5e5cd3929888b140";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ robot-state-publisher ros-control ros-controllers summit-xl-pad ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains the launch files that load the required controller interfaces for simulation in Gazebo.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
