
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, pythonPackages, roslib, rospy, rqt-gui, rqt-gui-py, sensor-msgs }:
buildRosPackage {
  pname = "ros-melodic-rqt-ground-robot-teleop";
  version = "1.3.7-r3";

  src = fetchurl {
    url = "https://github.com/JdeRobot/drones-release/archive/release/melodic/rqt_ground_robot_teleop/1.3.7-3.tar.gz";
    name = "1.3.7-3.tar.gz";
    sha256 = "1513c291a25a66ab29560861223d934a3b9fc05e2f1782fe95936170e9d81c35";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ geometry-msgs pythonPackages.rospkg roslib rospy rqt-gui rqt-gui-py sensor-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A common ground robot teleop interface for all ground robot exercises in the JdeRobot Robotics Academy'';
    license = with lib.licenses; [ mit ];
  };
}
