
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, turtlebot-bringup, turtlebot-capabilities, catkin, turtlebot-teleop, turtlebot-description }:
buildRosPackage {
  pname = "ros-kinetic-turtlebot";
  version = "2.4.2";

  src = fetchurl {
    url = https://github.com/turtlebot-release/turtlebot-release/archive/release/kinetic/turtlebot/2.4.2-0.tar.gz;
    sha256 = "f15e3dd5703c00eadd9d6f490031cd87270380214b9e567a181c6a0330f185f9";
  };

  propagatedBuildInputs = [ turtlebot-description turtlebot-capabilities turtlebot-teleop turtlebot-bringup ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The turtlebot meta package provides all the basic drivers for running and using a TurtleBot.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
