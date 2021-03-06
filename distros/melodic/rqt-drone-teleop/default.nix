
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, drone-wrapper, geometry-msgs, pythonPackages, roslib, rospy, rqt-gui, rqt-gui-py, sensor-msgs }:
buildRosPackage {
  pname = "ros-melodic-rqt-drone-teleop";
  version = "1.3.7-r3";

  src = fetchurl {
    url = "https://github.com/JdeRobot/drones-release/archive/release/melodic/rqt_drone_teleop/1.3.7-3.tar.gz";
    name = "1.3.7-3.tar.gz";
    sha256 = "2ce82e22304f925b0cfb0f520560d6ecef1af1552a3ff2a270e29db6fc8d9df8";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ drone-wrapper geometry-msgs pythonPackages.rospkg roslib rospy rqt-gui rqt-gui-py sensor-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A common drone teleop interface for all drone exercises in the JdeRobot Robotics Academy'';
    license = with lib.licenses; [ mit ];
  };
}
