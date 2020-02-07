
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, blas, catkin, eigen, liblapack, roscpp, suitesparse }:
buildRosPackage {
  pname = "ros-melodic-sparse-bundle-adjustment";
  version = "0.4.3-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/sparse_bundle_adjustment-release/archive/release/melodic/sparse_bundle_adjustment/0.4.3-1.tar.gz";
    name = "0.4.3-1.tar.gz";
    sha256 = "01999d93ad1a1991f5e80606f43a52dd27906b2da58c9f3296af6868f497aa1e";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ blas eigen liblapack roscpp suitesparse ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS wrapper for the sparse bundle adjustment (sba) library (needed for slam_karto)'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
