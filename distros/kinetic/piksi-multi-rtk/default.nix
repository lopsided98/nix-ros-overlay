
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, piksi-rtk-msgs, roslib, rospy, sensor-msgs }:
buildRosPackage {
  pname = "ros-kinetic-piksi-multi-rtk";
  version = "1.8.2-r1";

  src = fetchurl {
    url = "https://github.com/earthrover/earth_rover_piksi-release/archive/release/kinetic/piksi_multi_rtk/1.8.2-1.tar.gz";
    name = "1.8.2-1.tar.gz";
    sha256 = "0d845ae9e47fcb046b258370d4e78ccf916520e18fb51b08c568d0a6fc2170f7";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ geometry-msgs piksi-rtk-msgs roslib rospy sensor-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS driver for Piksi Multi RTK GPS Receiver.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
