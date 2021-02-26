
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, easy-markers, geometry-msgs, kalman-filter, leg-detector, people-msgs, roslaunch, roslib, roslint, rospy }:
buildRosPackage {
  pname = "ros-kinetic-people-velocity-tracker";
  version = "1.4.0-r2";

  src = fetchurl {
    url = "https://github.com/OSUrobotics/people-release/archive/release/kinetic/people_velocity_tracker/1.4.0-2.tar.gz";
    name = "1.4.0-2.tar.gz";
    sha256 = "e9b446cc526b8d32534ae11ae56a7cb3b0133793ddfe4bad11bda507f36f4d81";
  };

  buildType = "catkin";
  checkInputs = [ roslaunch roslint ];
  propagatedBuildInputs = [ easy-markers geometry-msgs kalman-filter leg-detector people-msgs roslib rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Track the output of the leg_detector to indicate the velocity of person.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
