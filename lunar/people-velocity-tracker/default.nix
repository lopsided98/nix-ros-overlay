
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

  buildInputs = [ kalman-filter people-msgs easy-markers rospy roslib geometry-msgs ];
  propagatedBuildInputs = [ kalman-filter people-msgs leg-detector easy-markers rospy roslib geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Track the output of the leg_detector to indicate the velocity of person.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
