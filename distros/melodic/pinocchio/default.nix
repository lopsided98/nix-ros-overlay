
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, clang, cmake, doxygen, eigen, eigenpy, git, hpp-fcl, python, pythonPackages, urdfdom }:
buildRosPackage {
  pname = "ros-melodic-pinocchio";
  version = "2.6.10-r1";

  src = fetchurl {
    url = "https://github.com/stack-of-tasks/pinocchio-ros-release/archive/release/melodic/pinocchio/2.6.10-1.tar.gz";
    name = "2.6.10-1.tar.gz";
    sha256 = "1d81e1e79e53f5f902fae36eb26ced0615e2e3ee33650562ed37276b9d43353f";
  };

  buildType = "cmake";
  buildInputs = [ doxygen git ];
  propagatedBuildInputs = [ boost catkin eigen eigenpy hpp-fcl python pythonPackages.numpy urdfdom ];
  nativeBuildInputs = [ clang cmake ];

  meta = {
    description = ''A fast and flexible implementation of Rigid Body Dynamics algorithms and their analytical derivatives.'';
    license = with lib.licenses; [ bsd2 ];
  };
}
