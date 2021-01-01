
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, easy-markers, geometry-msgs, kalman-filter, leg-detector, people-msgs, roslib, rospy }:
buildRosPackage {
  pname = "ros-kinetic-people-velocity-tracker";
  version = "1.1.3-r1";

  src = fetchurl {
    url = "https://github.com/OSUrobotics/people-release/archive/release/kinetic/people_velocity_tracker/1.1.3-1.tar.gz";
    name = "1.1.3-1.tar.gz";
    sha256 = "24595ad999e124490d6648ef5732faa5518d4a45dabe4e58da8a6348cce95bbc";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ easy-markers geometry-msgs kalman-filter leg-detector people-msgs roslib rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Track the output of the leg_detector to indicate the velocity of person.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
