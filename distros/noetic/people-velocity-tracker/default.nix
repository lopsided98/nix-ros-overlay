
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, easy-markers, geometry-msgs, kalman-filter, leg-detector, people-msgs, roslaunch, roslib, roslint, rospy }:
buildRosPackage {
  pname = "ros-noetic-people-velocity-tracker";
  version = "1.4.0-r1";

  src = fetchurl {
    url = "https://github.com/OSUrobotics/people-release/archive/release/noetic/people_velocity_tracker/1.4.0-1.tar.gz";
    name = "1.4.0-1.tar.gz";
    sha256 = "e01129e7da9a70ca43d9612728c1f44677c8ab050f5af95dc246abbf4f3e64b7";
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
