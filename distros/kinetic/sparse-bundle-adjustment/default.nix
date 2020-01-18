
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, blas, catkin, cmake-modules, eigen, liblapack, suitesparse }:
buildRosPackage {
  pname = "ros-kinetic-sparse-bundle-adjustment";
  version = "0.3.2";

  src = fetchurl {
    url = "https://github.com/ros-gbp/sparse_bundle_adjustment-release/archive/release/kinetic/sparse_bundle_adjustment/0.3.2-0.tar.gz";
    name = "0.3.2-0.tar.gz";
    sha256 = "5135a9ad619561403a733ba7d1405364d417963f4863d32229e3f19a3e5dbccd";
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
