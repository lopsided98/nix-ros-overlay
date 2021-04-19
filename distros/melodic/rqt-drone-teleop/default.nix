
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, drone-wrapper, geometry-msgs, pythonPackages, roslib, rospy, rqt-gui, rqt-gui-py, sensor-msgs }:
buildRosPackage {
  pname = "ros-melodic-rqt-drone-teleop";
  version = "1.3.8-r1";

  src = fetchurl {
    url = "https://github.com/JdeRobot/drones-release/archive/release/melodic/rqt_drone_teleop/1.3.8-1.tar.gz";
    name = "1.3.8-1.tar.gz";
    sha256 = "87489e35b416d29a2012f318da05b9090e02589ca580c98e6d4a287fb4150486";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ drone-wrapper geometry-msgs pythonPackages.rospkg roslib rospy rqt-gui rqt-gui-py sensor-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A common drone teleop interface for all drone exercises in the JdeRobot Robotics Academy'';
    license = with lib.licenses; [ mit ];
  };
}
