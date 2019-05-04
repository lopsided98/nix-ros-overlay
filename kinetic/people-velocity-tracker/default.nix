
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, kalman-filter, people-msgs, catkin, leg-detector, easy-markers, rospy, roslib, geometry-msgs }:
buildRosPackage {
  pname = "ros-kinetic-people-velocity-tracker";
  version = "1.1.2";

  src = fetchurl {
    url = https://github.com/OSUrobotics/people-release/archive/release/kinetic/people_velocity_tracker/1.1.2-0.tar.gz;
    sha256 = "f0d5f59a802464e62231f54bf7c0a76957bd03f479f77df6a6995f7e8fdc3ad9";
  };

  buildInputs = [ kalman-filter people-msgs easy-markers rospy roslib geometry-msgs ];
  propagatedBuildInputs = [ kalman-filter people-msgs leg-detector easy-markers rospy roslib geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Track the output of the leg_detector to indicate the velocity of person.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
