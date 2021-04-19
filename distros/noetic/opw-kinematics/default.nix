
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, eigen, gtest, ros-industrial-cmake-boilerplate }:
buildRosPackage {
  pname = "ros-noetic-opw-kinematics";
  version = "0.4.1-r2";

  src = fetchurl {
    url = "https://github.com/ros-industrial-release/opw_kinematics-release/archive/release/noetic/opw_kinematics/0.4.1-2.tar.gz";
    name = "0.4.1-2.tar.gz";
    sha256 = "c0519833d8b0565a70af7b7deff9aadb734ec782a719a3b0e73811a4d6c64b49";
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
