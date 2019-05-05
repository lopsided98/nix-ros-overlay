
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, suitesparse, catkin, blas, liblapack, eigen }:
buildRosPackage {
  pname = "ros-lunar-sparse-bundle-adjustment";
  version = "0.4.2";

  src = fetchurl {
    url = https://github.com/ros-gbp/sparse_bundle_adjustment-release/archive/release/lunar/sparse_bundle_adjustment/0.4.2-0.tar.gz;
    sha256 = "37b01cf3525c5c469a324a1009fcb67981f03a5ad1a12591d141f692c6b9b303";
  };

  buildInputs = [ liblapack suitesparse blas eigen ];
  propagatedBuildInputs = [ liblapack suitesparse blas eigen ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS wrapper for the sparse bundle adjustment (sba) library (needed for slam_karto)'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
