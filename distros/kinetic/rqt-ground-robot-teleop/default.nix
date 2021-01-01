
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, pythonPackages, roslib, rospy, rqt-gui, rqt-gui-py, sensor-msgs }:
buildRosPackage {
  pname = "ros-kinetic-rqt-ground-robot-teleop";
  version = "0.0.1-r1";

  src = fetchurl {
    url = "https://github.com/JdeRobot/ground_robots-release/archive/release/kinetic/rqt_ground_robot_teleop/0.0.1-1.tar.gz";
    name = "0.0.1-1.tar.gz";
    sha256 = "e271278468e460ab2bb80ce7692edbe3443c4e50a65d0cb95de061bd29574b80";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ geometry-msgs pythonPackages.rospkg roslib rospy rqt-gui rqt-gui-py sensor-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A common ground robot teleop interface for all ground robot exercises in the JdeRobot Robotics Academy'';
    license = with lib.licenses; [ mit ];
  };
}
