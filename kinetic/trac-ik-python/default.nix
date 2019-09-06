
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, swig, trac-ik-lib, rospy, tf-conversions, tf }:
buildRosPackage {
  pname = "ros-kinetic-trac-ik-python";
  version = "1.5.0";

  src = fetchurl {
    url = "https://github.com/traclabs/trac_ik-release/archive/release/kinetic/trac_ik_python/1.5.0-0.tar.gz";
    name = "1.5.0-0.tar.gz";
    sha256 = "587ff3dba0a2fc4cc769d5ac9cd34dd0beea95afe336395efd231ee450b83ef1";
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
