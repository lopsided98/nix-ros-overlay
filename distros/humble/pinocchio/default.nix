
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, clang, cmake, coal, doxygen, eigen, eigenpy, git, jrl-cmakemodules, python3, python3Packages, ros-environment, urdfdom }:
buildRosPackage {
  pname = "ros-humble-pinocchio";
  version = "4.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/pinocchio-release/archive/release/humble/pinocchio/4.1.0-1.tar.gz";
    name = "4.1.0-1.tar.gz";
    sha256 = "7f593e3a6826dff59bbb1d374fb025d989f60ec2e99599185d3aed70c455dd04";
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
