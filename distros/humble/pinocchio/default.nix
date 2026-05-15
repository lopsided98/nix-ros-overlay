
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, clang, cmake, coal, doxygen, eigen, eigenpy, git, jrl-cmakemodules, python3, python3Packages, ros-environment, urdfdom }:
buildRosPackage {
  pname = "ros-humble-pinocchio";
  version = "4.0.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/pinocchio-release/archive/release/humble/pinocchio/4.0.0-2.tar.gz";
    name = "4.0.0-2.tar.gz";
    sha256 = "7302bb845c8ffc753e82174cca31610aef94d6273e6fa7ad0d7cb86eea2f1064";
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
