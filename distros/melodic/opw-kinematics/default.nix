
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, eigen, gtest, ros-industrial-cmake-boilerplate }:
buildRosPackage {
  pname = "ros-melodic-opw-kinematics";
  version = "0.4.4-r1";

  src = fetchurl {
    url = "https://github.com/ros-industrial-release/opw_kinematics-release/archive/release/melodic/opw_kinematics/0.4.4-1.tar.gz";
    name = "0.4.4-1.tar.gz";
    sha256 = "a9c07bf7cce9ff8248cf00d681099def8d9dc4736f2a4b89ba54fbe3aee17b64";
  };

  buildType = "cmake";
  buildInputs = [ ros-industrial-cmake-boilerplate ];
  checkInputs = [ gtest ];
  propagatedBuildInputs = [ eigen ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''A simple, analytical inverse kinematic library for industrial robots with parallel bases and
    spherical wrists. Based on the paper &quot;An Analytical Solution of the Inverse Kinematics Problem
    of Industrial Serial Manipulators with an Ortho-parallel Basis and a Spherical Wrist&quot; by
    Mathias Brandstötter, Arthur Angerer, and Michael Hofbaur.'';
    license = with lib.licenses; [ asl20 ];
  };
}
