
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, urdf, robot-state-publisher, joint-state-publisher, xacro }:
buildRosPackage {
  pname = "ros-kinetic-magni-description";
  version = "0.4.2";

  src = fetchurl {
    url = https://github.com/UbiquityRobotics-release/magni_robot-release/archive/release/kinetic/magni_description/0.4.2-0.tar.gz;
    sha256 = "5ca95ee9329dbbbd67984cc3cc55aa0a2e53e8dee0b675984ffa6ad6916dfdd2";
  };

  propagatedBuildInputs = [ urdf joint-state-publisher xacro robot-state-publisher ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The magni_description package'';
    #license = lib.licenses.BSD;
  };
}
