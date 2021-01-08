
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rospy, swig, tf, tf-conversions, trac-ik-lib }:
buildRosPackage {
  pname = "ros-kinetic-trac-ik-python";
  version = "1.5.1-r1";

  src = fetchurl {
    url = "https://github.com/traclabs/trac_ik-release/archive/release/kinetic/trac_ik_python/1.5.1-1.tar.gz";
    name = "1.5.1-1.tar.gz";
    sha256 = "18bf9edf099f05b02c80fc4385c2c6c3f186cb943c9f38e89caffed7d53207e9";
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
