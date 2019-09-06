
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, swig, trac-ik-lib, rospy, tf-conversions, tf }:
buildRosPackage {
  pname = "ros-melodic-trac-ik-python";
  version = "1.5.0-r1";

  src = fetchurl {
    url = "https://github.com/traclabs/trac_ik-release/archive/release/melodic/trac_ik_python/1.5.0-1.tar.gz";
    name = "1.5.0-1.tar.gz";
    sha256 = "d61541a1eb22c8c6af749e058557fdbd0259fe89d4045230871a54b60666a5e1";
  };

  buildType = "catkin";
  buildInputs = [ swig trac-ik-lib tf-conversions rospy ];
  propagatedBuildInputs = [ swig trac-ik-lib rospy tf-conversions tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The trac_ik_python package contains a python wrapper using SWIG
  for trac_ik_lib'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
