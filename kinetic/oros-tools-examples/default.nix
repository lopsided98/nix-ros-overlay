
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, oros-tools, catkin, turtlebot, turtlebot-stage, turtlebot-navigation }:
buildRosPackage {
  pname = "ros-kinetic-oros-tools-examples";
  version = "0.1.3";

  src = fetchurl {
    url = https://github.com/easymov/oros_tools_examples-release/archive/release/kinetic/oros_tools_examples/0.1.3-0.tar.gz;
    sha256 = "ab9532b5b3b8436332230aaa226f6383ca3432ec5b1771861b42f4e66dbec2ef";
  };

  propagatedBuildInputs = [ turtlebot-navigation turtlebot-stage turtlebot oros-tools ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The oros_tools_examples package'';
    #license = lib.licenses.BSD;
  };
}
