
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, genmsg, catkin }:
buildRosPackage {
  pname = "ros-kinetic-roslang";
  version = "1.14.4";

  src = fetchurl {
    url = https://github.com/ros-gbp/ros-release/archive/release/kinetic/roslang/1.14.4-0.tar.gz;
    sha256 = "be96b88224a24d70844c3dccb84253791452f471b17ee8b25ebdc23bf4643f4e";
  };

  propagatedBuildInputs = [ genmsg catkin ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''roslang is a common package that all <a href="http://www.ros.org/wiki/Client%20Libraries">ROS client libraries</a> depend on.
    This is mainly used to find client libraries (via 'rospack depends-on1 roslang').'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
