
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, pythonPackages, roslib, rospy, rqt-gui, rqt-gui-py, sensor-msgs }:
buildRosPackage {
  pname = "ros-melodic-rqt-drone-teleop";
  version = "1.3.1-r1";

  src = fetchurl {
    url = "https://github.com/JdeRobot/drones-release/archive/release/melodic/rqt_drone_teleop/1.3.1-1.tar.gz";
    name = "1.3.1-1.tar.gz";
    sha256 = "7790a97effdd08d073ff9bf2565e8a8352eca540b181d0b8c3197d5cb91842ab";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ geometry-msgs pythonPackages.rospkg roslib rospy rqt-gui rqt-gui-py sensor-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A common drone teleop interface for all drone exercises in the JdeRobot Robotics Academy'';
    license = with lib.licenses; [ mit ];
  };
}
