
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, cmake, doxygen, eigen, eigenpy, git, python, pythonPackages, urdfdom }:
buildRosPackage {
  pname = "ros-melodic-pinocchio";
  version = "2.6.5-r1";

  src = fetchurl {
    url = "https://github.com/stack-of-tasks/pinocchio-ros-release/archive/release/melodic/pinocchio/2.6.5-1.tar.gz";
    name = "2.6.5-1.tar.gz";
    sha256 = "35f3edd5acf701eeb588bf21b22d2122a4d89267f39ba73ed4994832fc92a77f";
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
