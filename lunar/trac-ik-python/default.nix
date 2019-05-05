
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, swig, trac-ik-lib, rospy, tf-conversions, tf }:
buildRosPackage {
  pname = "ros-lunar-trac-ik-python";
  version = "1.5.0";

  src = fetchurl {
    url = https://github.com/traclabs/trac_ik-release/archive/release/lunar/trac_ik_python/1.5.0-0.tar.gz;
    sha256 = "47e9f24e227e8f7a56282af4a16c2055d94fa0db0f4fee50ec0f31bc7710c70f";
  };

  buildInputs = [ swig trac-ik-lib tf-conversions rospy ];
  propagatedBuildInputs = [ swig trac-ik-lib rospy tf-conversions tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The trac_ik_python package contains a python wrapper using SWIG
  for trac_ik_lib'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
