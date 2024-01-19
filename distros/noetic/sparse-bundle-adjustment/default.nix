
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, blas, catkin, eigen, liblapack, roscpp, suitesparse }:
buildRosPackage {
  pname = "ros-noetic-sparse-bundle-adjustment";
  version = "0.4.4-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/sparse_bundle_adjustment-release/archive/release/noetic/sparse_bundle_adjustment/0.4.4-1.tar.gz";
    name = "0.4.4-1.tar.gz";
    sha256 = "581e17cae309101f374d611037a3016e97b24cac93b027c699ee088680bd9558";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ blas eigen liblapack roscpp suitesparse ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS wrapper for the sparse bundle adjustment (sba) library (needed for slam_karto)'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
