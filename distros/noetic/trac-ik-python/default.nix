
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, nlopt, rospy, swig, tf, tf-conversions, trac-ik-lib }:
buildRosPackage {
  pname = "ros-noetic-trac-ik-python";
  version = "1.6.7-r1";

  src = fetchurl {
    url = "https://github.com/traclabs/trac_ik-release/archive/release/noetic/trac_ik_python/1.6.7-1.tar.gz";
    name = "1.6.7-1.tar.gz";
    sha256 = "14acd4fd48d7c637f6aa2a27b7fd78ac23d97760ee94d436262356890cfa616e";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ nlopt rospy swig tf tf-conversions trac-ik-lib ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "The trac_ik_python package contains a python wrapper using SWIG
  for trac_ik_lib";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
