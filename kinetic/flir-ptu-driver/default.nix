
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, boost, robot-state-publisher, flir-ptu-description, serial, tf, actionlib, catkin, roslint, roscpp, rospy, roslaunch, diagnostic-updater }:
buildRosPackage {
  pname = "ros-kinetic-flir-ptu-driver";
  version = "0.2.0";

  src = fetchurl {
    url = "https://github.com/ros-drivers-gbp/flir_ptu-release/archive/release/kinetic/flir_ptu_driver/0.2.0-0.tar.gz";
    name = "0.2.0-0.tar.gz";
    sha256 = "76ac03a80bcb5e57b899f75b5527bfc4719e14a2a136a1d13e00a3fd5cc9b67b";
  };

  buildType = "catkin";
  buildInputs = [ boost sensor-msgs serial tf actionlib roslint roscpp rospy roslaunch diagnostic-updater ];
  propagatedBuildInputs = [ sensor-msgs robot-state-publisher flir-ptu-description serial tf actionlib roscpp rospy diagnostic-updater ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Driver for the FLIR pan/tilt units.'';
    license = with lib.licenses; [ gpl1 ];
  };
}
