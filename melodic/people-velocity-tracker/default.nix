
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, kalman-filter, people-msgs, catkin, leg-detector, easy-markers, rospy, roslib, geometry-msgs }:
buildRosPackage {
  pname = "ros-melodic-people-velocity-tracker";
  version = "1.2.0-r1";

  src = fetchurl {
    url = https://github.com/OSUrobotics/people-release/archive/release/melodic/people_velocity_tracker/1.2.0-1.tar.gz;
    sha256 = "8058c2f01c299a3204c1ca5e6dc6e16e37afc35d10ae63d644ea0f21741c9ac8";
  };

  buildInputs = [ kalman-filter people-msgs easy-markers rospy roslib geometry-msgs ];
  propagatedBuildInputs = [ kalman-filter people-msgs leg-detector easy-markers rospy roslib geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Track the output of the leg_detector to indicate the velocity of person.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
