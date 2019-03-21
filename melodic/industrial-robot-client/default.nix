
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, control-msgs, actionlib-msgs, trajectory-msgs, sensor-msgs, catkin, industrial-utils, industrial-msgs, simple-message, urdf, robot-state-publisher, actionlib, std-msgs, roslaunch, roscpp, rosunit }:
buildRosPackage {
  pname = "ros-melodic-industrial-robot-client";
  version = "0.7.0";

  src = fetchurl {
    url = https://github.com/ros-industrial-release/industrial_core-release/archive/release/melodic/industrial_robot_client/0.7.0-0.tar.gz;
    sha256 = "c1039af144fc2cbd4de93b448d60d1a5bb417d8ad72f428324ed5a489e882424";
  };

  checkInputs = [ rosunit ];
  propagatedBuildInputs = [ actionlib-msgs control-msgs trajectory-msgs sensor-msgs industrial-utils industrial-msgs simple-message urdf robot-state-publisher actionlib std-msgs roscpp ];
  nativeBuildInputs = [ actionlib-msgs control-msgs trajectory-msgs sensor-msgs industrial-utils catkin industrial-msgs simple-message urdf actionlib std-msgs roslaunch roscpp ];

  meta = {
    description = ''industrial robot client contains generic clients for connecting 
     to industrial robot controllers with servers that adhere to the
     simple message protocol.'';
    #license = lib.licenses.BSD;
  };
}
