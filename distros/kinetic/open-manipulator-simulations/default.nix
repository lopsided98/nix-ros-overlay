
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, open-manipulator-gazebo }:
buildRosPackage {
  pname = "ros-kinetic-open-manipulator-simulations";
  version = "1.1.0";

  src = fetchurl {
    url = "https://github.com/ROBOTIS-GIT-release/open_manipulator_simulations-release/archive/release/kinetic/open_manipulator_simulations/1.1.0-0.tar.gz";
    name = "1.1.0-0.tar.gz";
    sha256 = "6383368d7c9c339e83e562483d63a3e2912e865dea0345944e74d22e803e9509";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ open-manipulator-gazebo ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Simulation packages for OpenManipulator'';
    license = with lib.licenses; [ asl20 ];
  };
}
