
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rospy, swig, tf, tf-conversions, trac-ik-lib }:
buildRosPackage {
  pname = "ros-noetic-trac-ik-python";
  version = "1.6.1-r6";

  src = fetchurl {
    url = "https://github.com/traclabs/trac_ik-release/archive/release/noetic/trac_ik_python/1.6.1-6.tar.gz";
    name = "1.6.1-6.tar.gz";
    sha256 = "83bd0dfb591bc4d63f8a3f3f4539ac0aa8a58c157689b715413f4d3f95a50733";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ rospy swig tf tf-conversions trac-ik-lib ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The trac_ik_python package contains a python wrapper using SWIG
  for trac_ik_lib'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
