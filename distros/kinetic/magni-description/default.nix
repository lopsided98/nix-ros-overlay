
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, joint-state-publisher, robot-state-publisher, urdf, xacro }:
buildRosPackage {
  pname = "ros-kinetic-magni-description";
  version = "0.4.2";

  src = fetchurl {
    url = "https://github.com/UbiquityRobotics-release/magni_robot-release/archive/release/kinetic/magni_description/0.4.2-0.tar.gz";
    name = "0.4.2-0.tar.gz";
    sha256 = "5ca95ee9329dbbbd67984cc3cc55aa0a2e53e8dee0b675984ffa6ad6916dfdd2";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ joint-state-publisher robot-state-publisher urdf xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The magni_description package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
