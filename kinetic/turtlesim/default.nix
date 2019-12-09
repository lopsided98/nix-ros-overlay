
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, message-generation, roscpp-serialization, geometry-msgs, std-msgs, std-srvs, catkin, roslib, roscpp, rostime, qt5, message-runtime, rosconsole }:
buildRosPackage {
  pname = "ros-kinetic-turtlesim";
  version = "0.7.1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_tutorials-release/archive/release/kinetic/turtlesim/0.7.1-0.tar.gz";
    name = "0.7.1-0.tar.gz";
    sha256 = "bd56f38a94dee0c7142361c48f56a1bee0bb69d98f238ee9d4be29ddf7098cd6";
  };

  buildType = "catkin";
  buildInputs = [ geometry-msgs roscpp-serialization std-msgs std-srvs roslib qt5.qtbase rostime roscpp message-generation rosconsole ];
  propagatedBuildInputs = [ geometry-msgs roscpp-serialization std-msgs std-srvs roslib qt5.qtbase rostime roscpp message-runtime rosconsole ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''turtlesim is a tool made for teaching ROS and ROS packages.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
