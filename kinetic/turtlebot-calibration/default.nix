
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, turtlebot-bringup, python-orocos-kdl, sensor-msgs, catkin, nav-msgs, message-generation, message-runtime, rospy, std-msgs, geometry-msgs }:
buildRosPackage {
  pname = "ros-kinetic-turtlebot-calibration";
  version = "2.3.7";

  src = fetchurl {
    url = https://github.com/turtlebot-release/turtlebot_apps-release/archive/release/kinetic/turtlebot_calibration/2.3.7-0.tar.gz;
    sha256 = "aab0b5257acf1a5eb8c0d4831637a61aed61c688fa0da99b6179f55520234174";
  };

  propagatedBuildInputs = [ turtlebot-bringup nav-msgs message-runtime rospy std-msgs python-orocos-kdl sensor-msgs geometry-msgs ];
  nativeBuildInputs = [ nav-msgs message-generation rospy std-msgs python-orocos-kdl sensor-msgs catkin geometry-msgs ];

  meta = {
    description = ''turtlebot_calibration'';
    #license = lib.licenses.BSD;
  };
}
