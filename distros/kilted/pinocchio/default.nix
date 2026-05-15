
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, clang, cmake, coal, doxygen, eigen, eigenpy, git, jrl-cmakemodules, python3, python3Packages, ros-environment, urdfdom }:
buildRosPackage {
  pname = "ros-kilted-pinocchio";
  version = "4.0.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/pinocchio-release/archive/release/kilted/pinocchio/4.0.0-2.tar.gz";
    name = "4.0.0-2.tar.gz";
    sha256 = "00c8191a3147bec474df0ef1b52d98be8710f9fe74f774a14b367a7ed4880767";
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
