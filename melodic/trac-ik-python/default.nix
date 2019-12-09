
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, tf, catkin, swig, trac-ik-lib, rospy, tf-conversions }:
buildRosPackage {
  pname = "ros-melodic-trac-ik-python";
  version = "1.5.1-r1";

  src = fetchurl {
    url = "https://github.com/traclabs/trac_ik-release/archive/release/melodic/trac_ik_python/1.5.1-1.tar.gz";
    name = "1.5.1-1.tar.gz";
    sha256 = "9c51f2b23b3874f3dafc2240d9e590a0305fd52256a011f34023b62b32258e02";
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
