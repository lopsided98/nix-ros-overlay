
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, clang, cmake, coal, doxygen, eigen, eigenpy, git, jrl-cmakemodules, python3, python3Packages, ros-environment, urdfdom }:
buildRosPackage {
  pname = "ros-rolling-pinocchio";
  version = "4.0.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/pinocchio-release/archive/release/rolling/pinocchio/4.0.0-2.tar.gz";
    name = "4.0.0-2.tar.gz";
    sha256 = "ce93c48d9e1784390bcf2c8665faeb7d5b6e37215e1dae07bcfa3462712a4ec3";
  };

  buildType = "cmake";
  buildInputs = [ clang cmake doxygen git jrl-cmakemodules ];
  propagatedBuildInputs = [ boost coal eigen eigenpy python3 python3Packages.numpy ros-environment urdfdom ];
  nativeBuildInputs = [ clang cmake ];

  meta = {
    description = "A fast and flexible implementation of Rigid Body Dynamics algorithms and their analytical derivatives.";
    license = with lib.licenses; [ "BSD-2-Clause" ];
  };
}
