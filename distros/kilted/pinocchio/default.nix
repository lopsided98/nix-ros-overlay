
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, clang, cmake, coal, doxygen, eigen, eigenpy, git, jrl-cmakemodules, python3, python3Packages, ros-environment, urdfdom }:
buildRosPackage {
  pname = "ros-kilted-pinocchio";
  version = "4.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/pinocchio-release/archive/release/kilted/pinocchio/4.1.0-1.tar.gz";
    name = "4.1.0-1.tar.gz";
    sha256 = "d9ef74ee44f8c06f882807d0fbf409d90c7af8f98ca7967158fbcc009846934e";
  };

  buildType = "cmake";
  buildInputs = [ clang cmake doxygen git jrl-cmakemodules ];
  propagatedBuildInputs = [ boost coal eigen eigenpy python3 python3Packages.numpy ros-environment urdfdom ];
  nativeBuildInputs = [ clang cmake ];

  meta = {
    description = "A fast and flexible implementation of Rigid Body Dynamics algorithms and their analytical derivatives.";
    license = with lib.licenses; [ bsd2 ];
  };
}
