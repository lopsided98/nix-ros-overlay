
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake, eigen, ifopt }:
buildRosPackage {
  pname = "ros-kinetic-towr";
  version = "1.4.1";

  src = fetchurl {
    url = "https://github.com/ethz-adrl/towr-release/archive/release/kinetic/towr/1.4.1-0.tar.gz";
    name = "1.4.1-0.tar.gz";
    sha256 = "56676dbc1ebbfa3259e500aabed8410028abb1797b63fd4893507bf15eb52175";
  };

  buildType = "cmake";
  propagatedBuildInputs = [ catkin eigen ifopt ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''A light-weight, Eigen-based
    C++ library for trajectory optimization for legged robots. 
    This library provides implementations for variables, costs and constraints
    that can be used to represent a legged locomotion problem. 
    The resulting Nonlinear Programming Problem (NLP) can then be solved with
    off-the-shelf solvers, e.g. Ipopt using the generic optimizer interface 
    <a href="http://wiki.ros.org/ifopt">ifopt</a>.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
