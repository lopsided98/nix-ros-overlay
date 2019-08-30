
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rqt-gui-py, sensor-msgs, rqt-gui, catkin, pythonPackages, rospy, roslib, geometry-msgs }:
buildRosPackage {
  pname = "ros-kinetic-rqt-ground-robot-teleop";
  version = "0.0.1-r1";

  src = fetchurl {
    url = https://github.com/JdeRobot/ground_robots-release/archive/release/kinetic/rqt_ground_robot_teleop/0.0.1-1.tar.gz;
    sha256 = "e271278468e460ab2bb80ce7692edbe3443c4e50a65d0cb95de061bd29574b80";
  };

  buildInputs = [ rqt-gui-py pythonPackages.rospkg sensor-msgs rqt-gui rospy roslib geometry-msgs ];
  propagatedBuildInputs = [ rqt-gui-py pythonPackages.rospkg sensor-msgs rqt-gui rospy roslib geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A common ground robot teleop interface for all ground robot exercises in the JdeRobot Robotics Academy'';
    license = with lib.licenses; [ mit ];
  };
}
