
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, interactive-markers, catkin, visualization-msgs, roscpp, turtlebot-bringup }:
buildRosPackage {
  pname = "ros-kinetic-turtlebot-interactive-markers";
  version = "2.3.1";

  src = fetchurl {
    url = "https://github.com/turtlebot-release/turtlebot_interactions-release/archive/release/kinetic/turtlebot_interactive_markers/2.3.1-0.tar.gz";
    name = "2.3.1-0.tar.gz";
    sha256 = "f17cda78e7b855b25d058aab4cf8a6afff1daf9fd9b3dbe5ab61951bedcabfc6";
  };

  buildType = "catkin";
  buildInputs = [ roscpp visualization-msgs interactive-markers ];
  propagatedBuildInputs = [ turtlebot-bringup interactive-markers visualization-msgs roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Interactive control for the TurtleBot using RViz and interactive markers'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
