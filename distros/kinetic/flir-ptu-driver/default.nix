
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, boost, catkin, diagnostic-updater, flir-ptu-description, robot-state-publisher, roscpp, roslaunch, roslint, rospy, sensor-msgs, serial, tf }:
buildRosPackage {
  pname = "ros-kinetic-flir-ptu-driver";
  version = "0.2.1-r1";

  src = fetchurl {
    url = "https://github.com/ros-drivers-gbp/flir_ptu-release/archive/release/kinetic/flir_ptu_driver/0.2.1-1.tar.gz";
    name = "0.2.1-1.tar.gz";
    sha256 = "9b81dd1b351eff66b4f35160d26152e9fa391f6251d47d12c6d6013e88f661ee";
  };

  buildType = "catkin";
  buildInputs = [ boost roslaunch roslint ];
  propagatedBuildInputs = [ actionlib diagnostic-updater flir-ptu-description robot-state-publisher roscpp rospy sensor-msgs serial tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Driver for the FLIR pan/tilt units.'';
    license = with lib.licenses; [ gpl1 ];
  };
}
