
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, open-manipulator-gazebo }:
buildRosPackage {
  pname = "ros-noetic-open-manipulator-simulations";
  version = "1.1.1-r1";

  src = fetchurl {
    url = "https://github.com/ROBOTIS-GIT-release/open_manipulator_simulations-release/archive/release/noetic/open_manipulator_simulations/1.1.1-1.tar.gz";
    name = "1.1.1-1.tar.gz";
    sha256 = "9d62659b5995a91a4a901e782358bc91c94a237a8c800bdece2cb8a1b8e9a391";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ open-manipulator-gazebo ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Simulation packages for OpenManipulator'';
    license = with lib.licenses; [ asl20 ];
  };
}
