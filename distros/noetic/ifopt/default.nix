
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake, eigen, ipopt }:
buildRosPackage {
  pname = "ros-noetic-ifopt";
  version = "2.1.3-r1";

  src = fetchurl {
    url = "https://github.com/ethz-adrl/ifopt-release/archive/release/noetic/ifopt/2.1.3-1.tar.gz";
    name = "2.1.3-1.tar.gz";
    sha256 = "9e97ce1b3ea65574c10f36477cb208760fbbc3d214de2d4672dcf5b904734599";
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
