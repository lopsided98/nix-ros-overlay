
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake-modules, eigen }:
buildRosPackage {
  pname = "ros-lunar-eigen-stl-containers";
  version = "0.1.8";

  src = fetchurl {
    url = https://github.com/ros-gbp/eigen_stl_containers-release/archive/release/lunar/eigen_stl_containers/0.1.8-0.tar.gz;
    sha256 = "2df7989ebe36db10452245275613809d02d264d3140bc77b7a6b0413e5c2402f";
  };

  buildInputs = [ cmake-modules eigen ];
  propagatedBuildInputs = [ eigen ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package provides a set of typedef's that allow
  using Eigen datatypes in STL containers'';
    #license = lib.licenses.BSD;
  };
}
