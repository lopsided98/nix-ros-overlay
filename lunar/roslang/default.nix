
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, genmsg, catkin }:
buildRosPackage {
  pname = "ros-lunar-roslang";
  version = "1.14.4";

  src = fetchurl {
    url = https://github.com/ros-gbp/ros-release/archive/release/lunar/roslang/1.14.4-0.tar.gz;
    sha256 = "b65661f692272629242a499638ba7580dd57c0c49bdb2a4ffbea322c66111e04";
  };

  propagatedBuildInputs = [ genmsg catkin ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''roslang is a common package that all <a href="http://www.ros.org/wiki/Client%20Libraries">ROS client libraries</a> depend on.
    This is mainly used to find client libraries (via 'rospack depends-on1 roslang').'';
    #license = lib.licenses.BSD;
  };
}
