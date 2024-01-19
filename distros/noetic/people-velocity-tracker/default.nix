
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, easy-markers, geometry-msgs, kalman-filter, leg-detector, people-msgs, roslaunch, roslib, roslint, rospy }:
buildRosPackage {
  pname = "ros-noetic-people-velocity-tracker";
  version = "1.4.2-r1";

  src = fetchurl {
    url = "https://github.com/OSUrobotics/people-release/archive/release/noetic/people_velocity_tracker/1.4.2-1.tar.gz";
    name = "1.4.2-1.tar.gz";
    sha256 = "74f53f59f4d27e127b40e908bc6dddc8459ffd2799a54ee69331e136c77a34ed";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ roslaunch roslint ];
  propagatedBuildInputs = [ easy-markers geometry-msgs kalman-filter leg-detector people-msgs roslib rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Track the output of the leg_detector to indicate the velocity of person.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
