
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-kinetic-agvs-control";
  version = "0.1.3";

  src = fetchurl {
    url = "https://github.com/RobotnikAutomation/agvs_sim-release/archive/release/kinetic/agvs_control/0.1.3-0.tar.gz";
    name = "0.1.3-0.tar.gz";
    sha256 = "fe1247d62037c2e144845f3cee3ee51d645a03bf97db906a3c9cc53d89d24e11";
  };

  buildType = "catkin";
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The agvs_control package. Config files used for Gazebo motor controllers.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
