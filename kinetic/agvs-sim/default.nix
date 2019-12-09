
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, agvs-robot-control, agvs-gazebo, catkin, agvs-control, agvs-sim-bringup }:
buildRosPackage {
  pname = "ros-kinetic-agvs-sim";
  version = "0.1.3";

  src = fetchurl {
    url = "https://github.com/RobotnikAutomation/agvs_sim-release/archive/release/kinetic/agvs_sim/0.1.3-0.tar.gz";
    name = "0.1.3-0.tar.gz";
    sha256 = "a189047dc877a521a3201c2b70ec3e5db2aa6d6bba1b8896a0b5aeb8922ff360";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ agvs-robot-control agvs-gazebo agvs-sim-bringup agvs-control ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''agvs Gazebo simulation packages'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
