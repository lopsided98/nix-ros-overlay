
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, jackal-gazebo }:
buildRosPackage {
  pname = "ros-kinetic-jackal-simulator";
  version = "0.3.1-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/jackal_simulator-release/archive/release/kinetic/jackal_simulator/0.3.1-1.tar.gz";
    name = "0.3.1-1.tar.gz";
    sha256 = "9f6a246fe2c32c52203867ab8ef3bb925587427b0925634c5c99d23068a9cd89";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ jackal-gazebo ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Packages for simulating Jackal.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
