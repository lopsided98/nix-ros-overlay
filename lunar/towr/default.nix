
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake, ifopt, eigen }:
buildRosPackage {
  pname = "ros-lunar-towr";
  version = "1.4.1";

  src = fetchurl {
    url = https://github.com/ethz-adrl/towr-release/archive/release/lunar/towr/1.4.1-0.tar.gz;
    sha256 = "821d2b4a9cc243072cab813b5cc9b63b8cd9b6e24fe5cafc085762b330ae3bdc";
  };

  buildInputs = [ ifopt eigen ];
  propagatedBuildInputs = [ catkin ifopt eigen ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''A light-weight, Eigen-based
    C++ library for trajectory optimization for legged robots. 
    This library provides implementations for variables, costs and constraints
    that can be used to represent a legged locomotion problem. 
    The resulting Nonlinear Programming Problem (NLP) can then be solved with
    off-the-shelf solvers, e.g. Ipopt using the generic optimizer interface 
    <a href="http://wiki.ros.org/ifopt">ifopt</a>.'';
    #license = lib.licenses.BSD;
  };
}
