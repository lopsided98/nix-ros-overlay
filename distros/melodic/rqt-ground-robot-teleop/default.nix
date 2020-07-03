
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, pythonPackages, roslib, rospy, rqt-gui, rqt-gui-py, sensor-msgs }:
buildRosPackage {
  pname = "ros-melodic-rqt-ground-robot-teleop";
  version = "1.3.2-r5";

  src = fetchurl {
    url = "https://github.com/JdeRobot/drones-release/archive/release/melodic/rqt_ground_robot_teleop/1.3.2-5.tar.gz";
    name = "1.3.2-5.tar.gz";
    sha256 = "11a8a07b711e9ce314e73c73391520ad0751a72223f62b117fee388970746dd4";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ geometry-msgs pythonPackages.rospkg roslib rospy rqt-gui rqt-gui-py sensor-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A common ground robot teleop interface for all ground robot exercises in the JdeRobot Robotics Academy'';
    license = with lib.licenses; [ mit ];
  };
}
