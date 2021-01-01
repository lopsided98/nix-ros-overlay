
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, blas, catkin, cmake-modules, eigen, liblapack, suitesparse }:
buildRosPackage {
  pname = "ros-kinetic-sparse-bundle-adjustment";
  version = "0.3.3-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/sparse_bundle_adjustment-release/archive/release/kinetic/sparse_bundle_adjustment/0.3.3-1.tar.gz";
    name = "0.3.3-1.tar.gz";
    sha256 = "8af8b44d522cb5351316d3f11fb3dd553228ea1bb3c29dac1596b280e987bd4c";
  };

  buildType = "catkin";
  buildInputs = [ cmake-modules eigen ];
  propagatedBuildInputs = [ blas liblapack suitesparse ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS wrapper for the sparse bundle adjustment (sba) library (needed for slam_karto)'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
