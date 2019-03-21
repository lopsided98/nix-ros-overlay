
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rospy, catkin, dynamic-reconfigure }:
buildRosPackage {
  pname = "ros-kinetic-ddynamic-reconfigure-python";
  version = "0.0.1";

  src = fetchurl {
    url = https://github.com/pal-gbp/ddynamic_reconfigure_python-release/archive/release/kinetic/ddynamic_reconfigure_python/0.0.1-0.tar.gz;
    sha256 = "1b7445d34e84777b2d5f8f21a12232c48acd6dfd63c9665481517344b3f8eb5a";
  };

  propagatedBuildInputs = [ rospy dynamic-reconfigure ];
  nativeBuildInputs = [ rospy catkin dynamic-reconfigure ];

  meta = {
    description = ''The ddynamic_reconfigure_python package contains
    a class to instantiate dynamic reconfigure servers on the fly
    registering variables'';
    #license = lib.licenses.BSD;
  };
}
