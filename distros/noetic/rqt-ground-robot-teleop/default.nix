
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, pythonPackages, roslib, rospy, rqt-gui, rqt-gui-py, sensor-msgs }:
buildRosPackage {
  pname = "ros-noetic-rqt-ground-robot-teleop";
  version = "1.4.0-r1";

  src = fetchurl {
    url = "https://github.com/JdeRobot/drones-release/archive/release/noetic/rqt_ground_robot_teleop/1.4.0-1.tar.gz";
    name = "1.4.0-1.tar.gz";
    sha256 = "3bb3ec22c82992e457654fa2bbca60688ae872e5dba98701d2f749d9d12d9f8c";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ geometry-msgs pythonPackages.rospkg roslib rospy rqt-gui rqt-gui-py sensor-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A common ground robot teleop interface for all ground robot exercises in the JdeRobot Robotics Academy'';
    license = with lib.licenses; [ mit ];
  };
}
