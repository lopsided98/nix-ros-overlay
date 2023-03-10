
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake, eigen, ipopt }:
buildRosPackage {
  pname = "ros-melodic-ifopt";
  version = "2.0.7-r1";

  src = fetchurl {
    url = "https://github.com/ethz-adrl/ifopt-release/archive/release/melodic/ifopt/2.0.7-1.tar.gz";
    name = "2.0.7-1.tar.gz";
    sha256 = "630314c4275e7bbb67671bec8d1dfe63ead45c88cb28c50fce0834e0a92bdbba";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  propagatedBuildInputs = [ catkin eigen ipopt ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''An <a href="http://eigen.tuxfamily.org">Eigen-</a>
    based interface to Nonlinear Programming solver
    <a href="https://projects.coin-or.org/Ipopt">Ipopt</a>. 
    Inuitive and efficient C++ implementation of variables, costs and 
    constraints using Eigen. Easy integration in your projects in catkin
    or pure cmake.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
