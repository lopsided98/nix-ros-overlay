
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake, eigen, ifopt }:
buildRosPackage {
  pname = "ros-melodic-towr";
  version = "1.4.1";

  src = fetchurl {
    url = "https://github.com/ethz-adrl/towr-release/archive/release/melodic/towr/1.4.1-0.tar.gz";
    name = "1.4.1-0.tar.gz";
    sha256 = "62df4c4444a14ce7bfb5bef8fbcd602942cb97a36b24ed7a7413575568b9a50f";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
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
