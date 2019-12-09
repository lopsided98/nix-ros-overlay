
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, navigation, stdr-robot, stdr-resources, turtlebot-navigation, catkin, yocs-virtual-sensor, stdr-server, yocs-velocity-smoother, turtlebot-bringup, stdr-gui }:
buildRosPackage {
  pname = "ros-kinetic-turtlebot-stdr";
  version = "2.2.3";

  src = fetchurl {
    url = "https://github.com/turtlebot-release/turtlebot_simulator-release/archive/release/kinetic/turtlebot_stdr/2.2.3-0.tar.gz";
    name = "2.2.3-0.tar.gz";
    sha256 = "e434f3c0a8a9410c54a97390f256e4ac5a58574713d0eecfcf2f968affa4265e";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ navigation stdr-robot stdr-resources turtlebot-navigation yocs-virtual-sensor stdr-server yocs-velocity-smoother turtlebot-bringup stdr-gui ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Stdr version of turtlebot simulation. Convenient to test 2D-navigation related stuffs'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
