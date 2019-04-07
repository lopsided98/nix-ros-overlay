
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, kalman-filter, people-msgs, catkin, leg-detector, easy-markers, rospy, roslib, geometry-msgs }:
buildRosPackage {
  pname = "ros-melodic-people-velocity-tracker";
  version = "1.1.2";

  src = fetchurl {
    url = https://github.com/OSUrobotics/people-release/archive/release/melodic/people_velocity_tracker/1.1.2-0.tar.gz;
    sha256 = "57da6c218e5e9b052299795c8143a4efae4123d78dedb160a66ffa59251bc93c";
  };

  buildInputs = [ easy-markers kalman-filter rospy people-msgs roslib geometry-msgs ];
  propagatedBuildInputs = [ easy-markers kalman-filter rospy people-msgs geometry-msgs roslib leg-detector ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Track the output of the leg_detector to indicate the velocity of person.'';
    #license = lib.licenses.BSD;
  };
}
