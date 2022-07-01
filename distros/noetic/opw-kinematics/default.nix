
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, eigen, gtest, ros-industrial-cmake-boilerplate }:
buildRosPackage {
  pname = "ros-noetic-opw-kinematics";
  version = "0.4.6-r1";

  src = fetchurl {
    url = "https://github.com/ros-industrial-release/opw_kinematics-release/archive/release/noetic/opw_kinematics/0.4.6-1.tar.gz";
    name = "0.4.6-1.tar.gz";
    sha256 = "35e451e0bfdafa08c2c3aa83707151fa50b268218acc0fb200b162390d061eea";
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
