
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cob-msgs, python3Packages, roslib, rospy, rqt-gui, rqt-robot-dashboard }:
buildRosPackage {
  pname = "ros-noetic-cob-dashboard";
  version = "0.6.33-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_command_tools-release/archive/release/noetic/cob_dashboard/0.6.33-1.tar.gz";
    name = "0.6.33-1.tar.gz";
    sha256 = "d214c88a73fc1154a13d60d13e9bfd1ff6eeb10e6b2de0704a76e10635c69f0e";
  };

  buildType = "catkin";
  buildInputs = [ catkin python3Packages.setuptools ];
  propagatedBuildInputs = [ cob-msgs roslib rospy rqt-gui rqt-robot-dashboard ];
  nativeBuildInputs = [ catkin python3Packages.setuptools ];

  meta = {
    description = ''cob_dashboard is a modified version of [[pr2_dashboard]].'';
    license = with lib.licenses; [ asl20 ];
  };
}
