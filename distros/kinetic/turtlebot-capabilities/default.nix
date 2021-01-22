
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, capabilities, catkin, std-capabilities }:
buildRosPackage {
  pname = "ros-kinetic-turtlebot-capabilities";
  version = "2.4.2";

  src = fetchurl {
    url = "https://github.com/turtlebot-release/turtlebot-release/archive/release/kinetic/turtlebot_capabilities/2.4.2-0.tar.gz";
    name = "2.4.2-0.tar.gz";
    sha256 = "f3108f7b2a3eac6010e039753063e73c8cd8d758f5670a58bbf33b8b4ffa1d44";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ capabilities std-capabilities ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Capabilities for the TurtleBot'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
