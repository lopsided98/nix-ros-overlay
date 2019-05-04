
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake, eigen }:
buildRosPackage {
  pname = "ros-kinetic-ifopt";
  version = "2.0.6";

  src = fetchurl {
    url = https://github.com/ethz-adrl/ifopt-release/archive/release/kinetic/ifopt/2.0.6-0.tar.gz;
    sha256 = "00283aab3509d1ff54de82fc7b8b1892c5f8a23dd69f2fa27981bcca52d02069";
  };

  buildInputs = [ eigen ];
  propagatedBuildInputs = [ catkin eigen ];
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
