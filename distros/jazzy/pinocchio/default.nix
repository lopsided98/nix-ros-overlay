
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, clang, cmake, doxygen, eigen, eigenpy, git, hpp-fcl, python3, python3Packages, urdfdom }:
buildRosPackage {
  pname = "ros-jazzy-pinocchio";
  version = "2.6.21-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/pinocchio-release/archive/release/jazzy/pinocchio/2.6.21-3.tar.gz";
    name = "2.6.21-3.tar.gz";
    sha256 = "1f3a88fbd0b82eb3d5102a265b56d7a7c2fe4cd15629637c65e7aa5a8e64bd94";
  };

  buildType = "cmake";
  buildInputs = [ clang cmake doxygen git ];
  propagatedBuildInputs = [ boost eigen eigenpy hpp-fcl python3 python3Packages.numpy urdfdom ];
  nativeBuildInputs = [ clang cmake ];

  meta = {
    description = "A fast and flexible implementation of Rigid Body Dynamics algorithms and their analytical derivatives.";
    license = with lib.licenses; [ bsd2 ];
  };
}
