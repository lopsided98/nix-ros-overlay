
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, geometry-msgs, message-generation, message-runtime, qt5, rosconsole, roscpp, roscpp-serialization, roslib, rostime, std-msgs, std-srvs }:
buildRosPackage {
  pname = "ros-noetic-turtlesim";
  version = "0.10.1-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_tutorials-release/archive/release/noetic/turtlesim/0.10.1-1.tar.gz";
    name = "0.10.1-1.tar.gz";
    sha256 = "de68834972760808b4d68151b2a7a77e80d605bbc84949d497275127b0504eb1";
  };

  buildType = "catkin";
  buildInputs = [ message-generation ];
  propagatedBuildInputs = [ boost geometry-msgs message-runtime qt5.qtbase rosconsole roscpp roscpp-serialization roslib rostime std-msgs std-srvs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''turtlesim is a tool made for teaching ROS and ROS packages.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
