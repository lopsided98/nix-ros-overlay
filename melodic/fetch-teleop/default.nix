
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, control-msgs, sensor-msgs, catkin, nav-msgs, actionlib, topic-tools, roscpp, geometry-msgs }:
buildRosPackage {
  pname = "ros-melodic-fetch-teleop";
  version = "0.8.1";

  src = fetchurl {
    url = https://github.com/fetchrobotics-gbp/fetch_ros-release/archive/release/melodic/fetch_teleop/0.8.1-0.tar.gz;
    sha256 = "cfb1141e6a532b67af9d7435c2797936e24fd9d2661a6327a3ad785be4bf33a4";
  };

  propagatedBuildInputs = [ nav-msgs control-msgs actionlib topic-tools sensor-msgs roscpp geometry-msgs ];
  nativeBuildInputs = [ nav-msgs catkin control-msgs actionlib topic-tools sensor-msgs roscpp geometry-msgs ];

  meta = {
    description = ''Teleoperation for fetch and freight.'';
    #license = lib.licenses.BSD;
  };
}
