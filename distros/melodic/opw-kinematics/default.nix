
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, eigen, gtest, ros-industrial-cmake-boilerplate }:
buildRosPackage {
  pname = "ros-melodic-opw-kinematics";
  version = "0.4.5-r1";

  src = fetchurl {
    url = "https://github.com/ros-industrial-release/opw_kinematics-release/archive/release/melodic/opw_kinematics/0.4.5-1.tar.gz";
    name = "0.4.5-1.tar.gz";
    sha256 = "3708584322d44413993005850d470ca1c32ef10eab0c44d7efa9cc5d950cd7fe";
  };

  buildType = "cmake";
  buildInputs = [ cmake ros-industrial-cmake-boilerplate ];
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
