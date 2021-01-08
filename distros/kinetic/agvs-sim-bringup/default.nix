
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-kinetic-agvs-sim-bringup";
  version = "0.1.3";

  src = fetchurl {
    url = "https://github.com/RobotnikAutomation/agvs_sim-release/archive/release/kinetic/agvs_sim_bringup/0.1.3-0.tar.gz";
    name = "0.1.3-0.tar.gz";
    sha256 = "6fd81a5a036fbc9c6c05d60140b3c552f567539adb8f7d3dc0646ee430066611";
  };

  buildType = "catkin";
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The agvs_sim_bringup package. It contains multiple launch files to perform different tasks, from creating a map with gmapping to launching amcl.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
