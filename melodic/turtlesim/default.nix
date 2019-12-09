
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, message-generation, roscpp-serialization, geometry-msgs, std-msgs, std-srvs, catkin, roslib, roscpp, rostime, qt5, message-runtime, rosconsole }:
buildRosPackage {
  pname = "ros-melodic-turtlesim";
  version = "0.9.1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_tutorials-release/archive/release/melodic/turtlesim/0.9.1-0.tar.gz";
    name = "0.9.1-0.tar.gz";
    sha256 = "eb38cc5c4153b4001fdb8a0dbc1ec95952b7f510abb1d9709e13b6e08a301cef";
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
