
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, clang, cmake, doxygen, eigen, eigenpy, git, hpp-fcl, jrl-cmakemodules, python3, python3Packages, ros-environment, urdfdom }:
buildRosPackage {
  pname = "ros-rolling-pinocchio";
  version = "3.9.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/pinocchio-release/archive/release/rolling/pinocchio/3.9.0-1.tar.gz";
    name = "3.9.0-1.tar.gz";
    sha256 = "96d9a121afe8d89da2e52bec0cae9372fcd6fb2af2b8b70a6e2e6930c5c1c094";
  };

  buildType = "cmake";
  buildInputs = [ clang cmake doxygen git jrl-cmakemodules ];
  propagatedBuildInputs = [ boost eigen eigenpy hpp-fcl python3 python3Packages.numpy ros-environment urdfdom ];
  nativeBuildInputs = [ clang cmake ];

  meta = {
    description = "A fast and flexible implementation of Rigid Body Dynamics algorithms and their analytical derivatives.";
    license = with lib.licenses; [ "BSD-2-Clause" ];
  };
}
