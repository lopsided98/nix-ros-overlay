
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-srvs, rosconsole, catkin, rostime, roslib, message-generation, qt5, message-runtime, roscpp-serialization, std-msgs, roscpp, geometry-msgs }:
buildRosPackage {
  pname = "ros-melodic-turtlesim";
  version = "0.9.1";

  src = fetchurl {
    url = https://github.com/ros-gbp/ros_tutorials-release/archive/release/melodic/turtlesim/0.9.1-0.tar.gz;
    sha256 = "eb38cc5c4153b4001fdb8a0dbc1ec95952b7f510abb1d9709e13b6e08a301cef";
  };

  propagatedBuildInputs = [ std-srvs rosconsole rostime qt5.qtbase roscpp message-runtime roscpp-serialization std-msgs roslib geometry-msgs ];
  nativeBuildInputs = [ std-srvs rosconsole catkin rostime roscpp qt5.qtbase message-generation roscpp-serialization std-msgs roslib geometry-msgs ];

  meta = {
    description = ''turtlesim is a tool made for teaching ROS and ROS packages.'';
    #license = lib.licenses.BSD;
  };
}
