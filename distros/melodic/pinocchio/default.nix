
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, cmake, doxygen, eigen, eigenpy, git, python, pythonPackages, urdfdom }:
buildRosPackage {
  pname = "ros-melodic-pinocchio";
  version = "2.6.1-r1";

  src = fetchurl {
    url = "https://github.com/ipab-slmc/pinocchio_catkin-release/archive/release/melodic/pinocchio/2.6.1-1.tar.gz";
    name = "2.6.1-1.tar.gz";
    sha256 = "d6bcb86336ec895fd8752c13fd9d4b1ff75821b38c54388c03c775a717d36b24";
  };

  buildType = "cmake";
  buildInputs = [ doxygen git ];
  propagatedBuildInputs = [ boost catkin eigen eigenpy python pythonPackages.numpy urdfdom ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''A fast and flexible implementation of Rigid Body Dynamics algorithms and their analytical derivatives.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
