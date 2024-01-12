
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, geometry-msgs, message-generation, message-runtime, qt5, rosconsole, roscpp, roscpp-serialization, roslib, rostime, std-msgs, std-srvs }:
buildRosPackage {
  pname = "ros-noetic-turtlesim";
  version = "0.10.2-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_tutorials-release/archive/release/noetic/turtlesim/0.10.2-1.tar.gz";
    name = "0.10.2-1.tar.gz";
    sha256 = "f5e1c21ee45163443ccc76bdae473e39b1f1015e2289ab13e6a7391c59bd33fb";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  propagatedBuildInputs = [ boost geometry-msgs message-runtime qt5.qtbase rosconsole roscpp roscpp-serialization roslib rostime std-msgs std-srvs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''turtlesim is a tool made for teaching ROS and ROS packages.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
