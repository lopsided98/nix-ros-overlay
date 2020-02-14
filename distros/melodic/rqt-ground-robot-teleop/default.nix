
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, pythonPackages, roslib, rospy, rqt-gui, rqt-gui-py, sensor-msgs }:
buildRosPackage {
  pname = "ros-melodic-rqt-ground-robot-teleop";
  version = "1.2.0-r1";

  src = fetchurl {
    url = "https://github.com/JdeRobot/drones-release/archive/release/melodic/rqt_ground_robot_teleop/1.2.0-1.tar.gz";
    name = "1.2.0-1.tar.gz";
    sha256 = "fd7cc9f6fffca226ee07c9d246053443317c9b81ec90cd9831914be433d985d1";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ geometry-msgs pythonPackages.rospkg roslib rospy rqt-gui rqt-gui-py sensor-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A common ground robot teleop interface for all ground robot exercises in the JdeRobot Robotics Academy'';
    license = with lib.licenses; [ mit ];
  };
}
