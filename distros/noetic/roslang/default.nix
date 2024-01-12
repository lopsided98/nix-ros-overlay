
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, genmsg }:
buildRosPackage {
  pname = "ros-noetic-roslang";
  version = "1.15.8-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros-release/archive/release/noetic/roslang/1.15.8-1.tar.gz";
    name = "1.15.8-1.tar.gz";
    sha256 = "920854f983ee43f4eda52a44e2e318f1db47ffd36f74af6cd43c9139c0d5f053";
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
