
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, cmake, doxygen, eigen, eigenpy, git, python, pythonPackages, urdfdom }:
buildRosPackage {
  pname = "ros-melodic-pinocchio";
  version = "2.4.5-r1";

  src = fetchurl {
    url = "https://github.com/ipab-slmc/pinocchio_catkin-release/archive/release/melodic/pinocchio/2.4.5-1.tar.gz";
    name = "2.4.5-1.tar.gz";
    sha256 = "18540457cbad5beb19e100db8303eb16ada0e78457cd663824872314e153e484";
  };

  buildType = "cmake";
  buildInputs = [ doxygen git ];
  propagatedBuildInputs = [ boost eigen eigenpy python pythonPackages.numpy urdfdom ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''A fast and flexible implementation of Rigid Body Dynamics algorithms and their analytical derivatives.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
