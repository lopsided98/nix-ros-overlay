
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, drone-wrapper, geometry-msgs, pythonPackages, roslib, rospy, rqt-gui, rqt-gui-py, sensor-msgs }:
buildRosPackage {
  pname = "ros-noetic-rqt-drone-teleop";
  version = "1.4.0-r1";

  src = fetchurl {
    url = "https://github.com/JdeRobot/drones-release/archive/release/noetic/rqt_drone_teleop/1.4.0-1.tar.gz";
    name = "1.4.0-1.tar.gz";
    sha256 = "296fdabffa7365e21fb7ab133efc32756463f189bf49a349e5ea6d1d511b6155";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ drone-wrapper geometry-msgs pythonPackages.rospkg roslib rospy rqt-gui rqt-gui-py sensor-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A common drone teleop interface for all drone exercises in the JdeRobot Robotics Academy'';
    license = with lib.licenses; [ mit ];
  };
}
