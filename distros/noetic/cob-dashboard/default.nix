
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cob-msgs, python3Packages, roslib, rospy, rqt-gui, rqt-robot-dashboard }:
buildRosPackage {
  pname = "ros-noetic-cob-dashboard";
  version = "0.6.34-r1";

  src = fetchurl {
    url = "https://github.com/4am-robotics/cob_command_tools-release/archive/release/noetic/cob_dashboard/0.6.34-1.tar.gz";
    name = "0.6.34-1.tar.gz";
    sha256 = "ef34366a86bd59099c327cf04a5457f2434e9d872a86235598702f0fdee24e9b";
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
