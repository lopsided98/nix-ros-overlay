
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, kalman-filter, people-msgs, catkin, leg-detector, easy-markers, rospy, roslib, geometry-msgs }:
buildRosPackage {
  pname = "ros-lunar-people-velocity-tracker";
  version = "1.1.2-r1";

  src = fetchurl {
    url = https://github.com/OSUrobotics/people-release/archive/release/lunar/people_velocity_tracker/1.1.2-1.tar.gz;
    sha256 = "ab03e11af4a8321cb70dd69f8144c685cecfbc3a84383b77d5f42755dadd122b";
  };

  buildInputs = [ easy-markers kalman-filter rospy people-msgs roslib geometry-msgs ];
  propagatedBuildInputs = [ easy-markers kalman-filter rospy people-msgs geometry-msgs roslib leg-detector ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Track the output of the leg_detector to indicate the velocity of person.'';
    #license = lib.licenses.BSD;
  };
}
