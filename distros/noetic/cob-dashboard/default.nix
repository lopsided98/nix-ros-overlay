
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cob-msgs, python3Packages, roslib, rospy, rqt-gui, rqt-robot-dashboard }:
buildRosPackage {
  pname = "ros-noetic-cob-dashboard";
  version = "0.6.35-r2";

  src = fetchurl {
    url = "https://github.com/4am-robotics/cob_command_tools-release/archive/release/noetic/cob_dashboard/0.6.35-2.tar.gz";
    name = "0.6.35-2.tar.gz";
    sha256 = "843b4e9ffc1c2f0841899e7ee6c34fbf140bb8604008c7fa4846b641da21d315";
  };

  buildType = "catkin";
  buildInputs = [ catkin python3Packages.setuptools ];
  propagatedBuildInputs = [ cob-msgs roslib rospy rqt-gui rqt-robot-dashboard ];
  nativeBuildInputs = [ catkin python3Packages.setuptools ];

  meta = {
    description = "cob_dashboard is a modified version of [[pr2_dashboard]].";
    license = with lib.licenses; [ asl20 ];
  };
}
