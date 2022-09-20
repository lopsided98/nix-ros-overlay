
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, boost, catkin, diagnostic-updater, flir-ptu-description, robot-state-publisher, roscpp, roslaunch, roslint, rospy, sensor-msgs, serial, tf }:
buildRosPackage {
  pname = "ros-melodic-flir-ptu-driver";
  version = "0.2.1-r1";

  src = fetchurl {
    url = "https://github.com/ros-drivers-gbp/flir_ptu-release/archive/release/melodic/flir_ptu_driver/0.2.1-1.tar.gz";
    name = "0.2.1-1.tar.gz";
    sha256 = "e6110cdc136d13ce0adce0f280478c984e9dd510974eac99f1345f6400e50afa";
  };

  buildType = "catkin";
  buildInputs = [ boost catkin roslaunch roslint ];
  propagatedBuildInputs = [ actionlib diagnostic-updater flir-ptu-description robot-state-publisher roscpp rospy sensor-msgs serial tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Driver for the FLIR pan/tilt units.'';
    license = with lib.licenses; [ "GPL" ];
  };
}
