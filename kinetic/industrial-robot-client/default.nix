
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, control-msgs, actionlib-msgs, trajectory-msgs, sensor-msgs, industrial-utils, catkin, industrial-msgs, simple-message, urdf, robot-state-publisher, actionlib, std-msgs, roslaunch, roscpp, rosunit }:
buildRosPackage {
  pname = "ros-kinetic-industrial-robot-client";
  version = "0.7.0";

  src = fetchurl {
    url = https://github.com/ros-industrial-release/industrial_core-release/archive/release/kinetic/industrial_robot_client/0.7.0-0.tar.gz;
    sha256 = "fb9e9464e6fb6f86cfd77efcd8a67a1402f5eba2a16a038fb6c32b8c33fa4055";
  };

  buildInputs = [ actionlib-msgs control-msgs trajectory-msgs sensor-msgs industrial-utils industrial-msgs simple-message urdf actionlib std-msgs roslaunch roscpp ];
  checkInputs = [ rosunit ];
  propagatedBuildInputs = [ actionlib-msgs control-msgs trajectory-msgs sensor-msgs industrial-utils industrial-msgs simple-message urdf robot-state-publisher actionlib std-msgs roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''industrial robot client contains generic clients for connecting 
     to industrial robot controllers with servers that adhere to the
     simple message protocol.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
