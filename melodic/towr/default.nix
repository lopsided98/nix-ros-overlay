
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, catkin, ifopt, eigen }:
buildRosPackage {
  pname = "ros-melodic-towr";
  version = "1.4.0";

  src = fetchurl {
    url = https://github.com/ethz-adrl/towr-release/archive/release/melodic/towr/1.4.0-0.tar.gz;
    sha256 = "18224d80b20f9ee0fbce448953e2ceccb1d7b4b9b99f54d7a95c33d11eb7da43";
  };

  propagatedBuildInputs = [ catkin ifopt eigen ];
  nativeBuildInputs = [ cmake ifopt eigen ];

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
