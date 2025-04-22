
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, genmsg }:
buildRosPackage {
  pname = "ros-noetic-roslang";
  version = "1.15.9-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros-release/archive/release/noetic/roslang/1.15.9-1.tar.gz";
    name = "1.15.9-1.tar.gz";
    sha256 = "4f596ac011719b6de6b682f7cb1afced7cebedf1a6ae57f60c921e4adbac97b8";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ catkin genmsg ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "roslang is a common package that all <a href=\"http://www.ros.org/wiki/Client%20Libraries\">ROS client libraries</a> depend on.
    This is mainly used to find client libraries (via 'rospack depends-on1 roslang').";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
