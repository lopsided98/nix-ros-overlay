
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, genmsg, catkin }:
buildRosPackage {
  pname = "ros-melodic-roslang";
  version = "1.14.6";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros-release/archive/release/melodic/roslang/1.14.6-0.tar.gz";
    name = "1.14.6-0.tar.gz";
    sha256 = "147d2f848b96ebd2b38f17bd62b485e3b213c1ac672c497d5216038f5c5f5bda";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ genmsg catkin ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''roslang is a common package that all <a href="http://www.ros.org/wiki/Client%20Libraries">ROS client libraries</a> depend on.
    This is mainly used to find client libraries (via 'rospack depends-on1 roslang').'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
