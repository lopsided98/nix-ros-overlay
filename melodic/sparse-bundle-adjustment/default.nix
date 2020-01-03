
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, blas, catkin, eigen, liblapack, suitesparse }:
buildRosPackage {
  pname = "ros-melodic-sparse-bundle-adjustment";
  version = "0.4.2";

  src = fetchurl {
    url = "https://github.com/ros-gbp/sparse_bundle_adjustment-release/archive/release/melodic/sparse_bundle_adjustment/0.4.2-0.tar.gz";
    name = "0.4.2-0.tar.gz";
    sha256 = "ab87c65d8f8d392258c9d733edf76c417488f78b564a7ce7000bd67ed5bd26fd";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ blas eigen liblapack suitesparse ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS wrapper for the sparse bundle adjustment (sba) library (needed for slam_karto)'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
