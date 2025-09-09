
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, geometry-msgs, message-generation, message-runtime, qt5, rosconsole, roscpp, roscpp-serialization, roslib, rostime, std-msgs, std-srvs }:
buildRosPackage {
  pname = "ros-noetic-turtlesim";
  version = "0.10.3-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_tutorials-release/archive/release/noetic/turtlesim/0.10.3-1.tar.gz";
    name = "0.10.3-1.tar.gz";
    sha256 = "0f07b73276f9d0830bcf2392733f3500027568bb0d9019c464b49616d6b200bb";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  propagatedBuildInputs = [ boost geometry-msgs message-runtime qt5.qtbase rosconsole roscpp roscpp-serialization roslib rostime std-msgs std-srvs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "turtlesim is a tool made for teaching ROS and ROS packages.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
