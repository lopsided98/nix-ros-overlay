
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, moose-gazebo }:
buildRosPackage {
  pname = "ros-kinetic-moose-simulator";
  version = "0.1.3-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/moose_simulator-release/archive/release/kinetic/moose_simulator/0.1.3-1.tar.gz";
    name = "0.1.3-1.tar.gz";
    sha256 = "33c6d056ffbe7781b9d46dc1deb0e63544eb1a05179074b3eb056584d9c52664";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ moose-gazebo ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Packages for simulating Moose'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
