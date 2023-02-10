
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, clang, cmake, doxygen, eigen, eigenpy, git, hpp-fcl, python, pythonPackages, urdfdom }:
buildRosPackage {
  pname = "ros-melodic-pinocchio";
  version = "2.6.16-r1";

  src = fetchurl {
    url = "https://github.com/stack-of-tasks/pinocchio-ros-release/archive/release/melodic/pinocchio/2.6.16-1.tar.gz";
    name = "2.6.16-1.tar.gz";
    sha256 = "f58ab18d9cea7356ef49678e385022c6be24b57fad076a50114dbdb1098a58b7";
  };

  buildType = "cmake";
  buildInputs = [ clang cmake doxygen git ];
  propagatedBuildInputs = [ boost catkin eigen eigenpy hpp-fcl python pythonPackages.numpy urdfdom ];
  nativeBuildInputs = [ clang cmake ];

  meta = {
    description = ''A fast and flexible implementation of Rigid Body Dynamics algorithms and their analytical derivatives.'';
    license = with lib.licenses; [ bsd2 ];
  };
}
