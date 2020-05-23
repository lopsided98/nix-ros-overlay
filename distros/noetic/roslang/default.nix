
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, genmsg }:
buildRosPackage {
  pname = "ros-noetic-roslang";
  version = "1.15.1-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros-release/archive/release/noetic/roslang/1.15.1-1.tar.gz";
    name = "1.15.1-1.tar.gz";
    sha256 = "8c38a3e5459feaa17f9071a14e279712b2743fd1da3bad5a10e819b96615fdb5";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ catkin genmsg ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''roslang is a common package that all <a href="http://www.ros.org/wiki/Client%20Libraries">ROS client libraries</a> depend on.
    This is mainly used to find client libraries (via 'rospack depends-on1 roslang').'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
