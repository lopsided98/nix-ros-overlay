
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, kalman-filter, people-msgs, catkin, leg-detector, easy-markers, rospy, roslib, geometry-msgs }:
buildRosPackage {
  pname = "ros-kinetic-people-velocity-tracker";
  version = "1.1.3-r1";

  src = fetchurl {
    url = https://github.com/OSUrobotics/people-release/archive/release/kinetic/people_velocity_tracker/1.1.3-1.tar.gz;
    sha256 = "24595ad999e124490d6648ef5732faa5518d4a45dabe4e58da8a6348cce95bbc";
  };

  buildInputs = [ kalman-filter people-msgs easy-markers rospy roslib geometry-msgs ];
  propagatedBuildInputs = [ kalman-filter people-msgs leg-detector easy-markers rospy roslib geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Track the output of the leg_detector to indicate the velocity of person.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
