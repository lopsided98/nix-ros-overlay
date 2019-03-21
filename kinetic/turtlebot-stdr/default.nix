
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, stdr-server, turtlebot-bringup, stdr-robot, catkin, yocs-velocity-smoother, navigation, yocs-virtual-sensor, stdr-gui, stdr-resources, turtlebot-navigation }:
buildRosPackage {
  pname = "ros-kinetic-turtlebot-stdr";
  version = "2.2.3";

  src = fetchurl {
    url = https://github.com/turtlebot-release/turtlebot_simulator-release/archive/release/kinetic/turtlebot_stdr/2.2.3-0.tar.gz;
    sha256 = "e434f3c0a8a9410c54a97390f256e4ac5a58574713d0eecfcf2f968affa4265e";
  };

  propagatedBuildInputs = [ stdr-server turtlebot-bringup stdr-robot yocs-velocity-smoother navigation yocs-virtual-sensor stdr-gui stdr-resources turtlebot-navigation ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Stdr version of turtlebot simulation. Convenient to test 2D-navigation related stuffs'';
    #license = lib.licenses.BSD;
  };
}
