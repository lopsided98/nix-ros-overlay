
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, dynamic-reconfigure, rospy }:
buildRosPackage {
  pname = "ros-kinetic-ddynamic-reconfigure-python";
  version = "0.0.1";

  src = fetchurl {
    url = "https://github.com/pal-gbp/ddynamic_reconfigure_python-release/archive/release/kinetic/ddynamic_reconfigure_python/0.0.1-0.tar.gz";
    name = "0.0.1-0.tar.gz";
    sha256 = "1b7445d34e84777b2d5f8f21a12232c48acd6dfd63c9665481517344b3f8eb5a";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ dynamic-reconfigure rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The ddynamic_reconfigure_python package contains
    a class to instantiate dynamic reconfigure servers on the fly
    registering variables'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
