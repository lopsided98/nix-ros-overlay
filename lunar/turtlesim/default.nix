
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-srvs, rosconsole, catkin, rostime, roslib, message-generation, qt5, message-runtime, roscpp-serialization, std-msgs, roscpp, geometry-msgs }:
buildRosPackage {
  pname = "ros-lunar-turtlesim";
  version = "0.8.1";

  src = fetchurl {
    url = https://github.com/ros-gbp/ros_tutorials-release/archive/release/lunar/turtlesim/0.8.1-0.tar.gz;
    sha256 = "ce15b5cb9dd8c7b43bd5082bd62f713e09fdc55d0bcb081fd462df88e14fda1f";
  };

  buildInputs = [ std-srvs rosconsole rostime roscpp qt5.qtbase message-generation roscpp-serialization std-msgs roslib geometry-msgs ];
  propagatedBuildInputs = [ std-srvs rosconsole rostime qt5.qtbase roscpp message-runtime roscpp-serialization std-msgs roslib geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''turtlesim is a tool made for teaching ROS and ROS packages.'';
    #license = lib.licenses.BSD;
  };
}
