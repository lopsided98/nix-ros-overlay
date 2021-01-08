
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, easy-markers, geometry-msgs, kalman-filter, people-msgs, roslib, roslint, rospy }:
buildRosPackage {
  pname = "ros-noetic-people-velocity-tracker";
  version = "1.2.2-r1";

  src = fetchurl {
    url = "https://github.com/OSUrobotics/people-release/archive/release/noetic/people_velocity_tracker/1.2.2-1.tar.gz";
    name = "1.2.2-1.tar.gz";
    sha256 = "9ce69647385152fc6877470b7f1aa545a3ce53e3c639cc71f474e8ad3357f1bf";
  };

  buildType = "catkin";
  checkInputs = [ roslint ];
  propagatedBuildInputs = [ easy-markers geometry-msgs kalman-filter people-msgs roslib rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Track the output of the leg_detector to indicate the velocity of person.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
