
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, oros-tools, turtlebot, turtlebot-navigation, turtlebot-stage }:
buildRosPackage {
  pname = "ros-kinetic-oros-tools-examples";
  version = "0.1.3";

  src = fetchurl {
    url = "https://github.com/easymov/oros_tools_examples-release/archive/release/kinetic/oros_tools_examples/0.1.3-0.tar.gz";
    name = "0.1.3-0.tar.gz";
    sha256 = "ab9532b5b3b8436332230aaa226f6383ca3432ec5b1771861b42f4e66dbec2ef";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ oros-tools turtlebot turtlebot-navigation turtlebot-stage ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The oros_tools_examples package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
