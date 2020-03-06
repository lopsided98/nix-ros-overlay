
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, geometry-msgs, message-generation, message-runtime, qt5, rosconsole, roscpp, roscpp-serialization, roslib, rostime, std-msgs, std-srvs }:
buildRosPackage {
  pname = "ros-melodic-turtlesim";
  version = "0.9.2-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_tutorials-release/archive/release/melodic/turtlesim/0.9.2-1.tar.gz";
    name = "0.9.2-1.tar.gz";
    sha256 = "3388521855bde7ec4917d2680138f82c1e2240bdd9554eff04c036d66dceb5bc";
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
