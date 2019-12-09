
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, tf, catkin, swig, trac-ik-lib, rospy, tf-conversions }:
buildRosPackage {
  pname = "ros-kinetic-trac-ik-python";
  version = "1.5.1-r1";

  src = fetchurl {
    url = "https://github.com/traclabs/trac_ik-release/archive/release/kinetic/trac_ik_python/1.5.1-1.tar.gz";
    name = "1.5.1-1.tar.gz";
    sha256 = "18bf9edf099f05b02c80fc4385c2c6c3f186cb943c9f38e89caffed7d53207e9";
  };

  buildType = "catkin";
  buildInputs = [ swig rospy tf-conversions trac-ik-lib ];
  propagatedBuildInputs = [ tf swig trac-ik-lib rospy tf-conversions ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The trac_ik_python package contains a python wrapper using SWIG
  for trac_ik_lib'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
