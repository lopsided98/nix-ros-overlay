
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, cmake, eigen, ipopt }:
buildRosPackage {
  pname = "ros-foxy-ifopt";
  version = "2.1.2-r1";

  src = fetchurl {
    url = "https://github.com/ethz-adrl/ifopt-release/archive/release/foxy/ifopt/2.1.2-1.tar.gz";
    name = "2.1.2-1.tar.gz";
    sha256 = "7e10e4814b8fcc35d40c8b923de0a6da6ef04748222ab8c2577ff5fe4349a46c";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  propagatedBuildInputs = [ ament-cmake eigen ipopt ];
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
