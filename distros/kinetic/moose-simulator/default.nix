
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, moose-gazebo }:
buildRosPackage {
  pname = "ros-kinetic-moose-simulator";
  version = "0.1.1-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/moose_simulator-release/archive/release/kinetic/moose_simulator/0.1.1-1.tar.gz";
    name = "0.1.1-1.tar.gz";
    sha256 = "0bbb6bb1bc90931e2bf1fc1b0b6000d4521384611ce09acd52c4d526451625e6";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ moose-gazebo ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Packages for simulating Moose'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
