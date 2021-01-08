
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, message-generation, message-runtime, nav-msgs, python-orocos-kdl, rospy, sensor-msgs, std-msgs, turtlebot-bringup }:
buildRosPackage {
  pname = "ros-kinetic-turtlebot-calibration";
  version = "2.3.7";

  src = fetchurl {
    url = "https://github.com/turtlebot-release/turtlebot_apps-release/archive/release/kinetic/turtlebot_calibration/2.3.7-0.tar.gz";
    name = "2.3.7-0.tar.gz";
    sha256 = "aab0b5257acf1a5eb8c0d4831637a61aed61c688fa0da99b6179f55520234174";
  };

  buildType = "catkin";
  buildInputs = [ message-generation ];
  propagatedBuildInputs = [ geometry-msgs message-runtime nav-msgs python-orocos-kdl rospy sensor-msgs std-msgs turtlebot-bringup ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''turtlebot_calibration'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
