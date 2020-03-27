
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, gazebo-msgs, geometry-msgs, pythonPackages, roslib, rospy, tf }:
buildRosPackage {
  pname = "ros-melodic-cob-gazebo-tools";
  version = "0.7.4-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_simulation-release/archive/release/melodic/cob_gazebo_tools/0.7.4-1.tar.gz";
    name = "0.7.4-1.tar.gz";
    sha256 = "ac13aa05cc3e8efbdebb690cdad1462775d85d285d0966084d76deaa235ee064";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ gazebo-msgs geometry-msgs pythonPackages.numpy roslib rospy tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The cob_gazebo_tools package provides helper tools for the gazebo simulation'';
    license = with lib.licenses; [ asl20 ];
  };
}
