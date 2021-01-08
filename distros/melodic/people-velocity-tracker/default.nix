
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, easy-markers, geometry-msgs, kalman-filter, leg-detector, people-msgs, roslib, rospy }:
buildRosPackage {
  pname = "ros-melodic-people-velocity-tracker";
  version = "1.2.0-r1";

  src = fetchurl {
    url = "https://github.com/OSUrobotics/people-release/archive/release/melodic/people_velocity_tracker/1.2.0-1.tar.gz";
    name = "1.2.0-1.tar.gz";
    sha256 = "8058c2f01c299a3204c1ca5e6dc6e16e37afc35d10ae63d644ea0f21741c9ac8";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ easy-markers geometry-msgs kalman-filter leg-detector people-msgs roslib rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Track the output of the leg_detector to indicate the velocity of person.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
