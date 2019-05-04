
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ros-control, catkin, robot-state-publisher, summit-xl-pad, ros-controllers }:
buildRosPackage {
  pname = "ros-kinetic-summit-xl-control";
  version = "1.1.1";

  src = fetchurl {
    url = https://github.com/RobotnikAutomation/summit_xl_sim-release/archive/release/kinetic/summit_xl_control/1.1.1-0.tar.gz;
    sha256 = "c397fc2bf83aa6590374475bc27165b34c01537f5331c39a5e5cd3929888b140";
  };

  propagatedBuildInputs = [ ros-control summit-xl-pad robot-state-publisher ros-controllers ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains the launch files that load the required controller interfaces for simulation in Gazebo.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
