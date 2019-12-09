
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rqt-gui, cob-msgs, catkin, roslib, rqt-robot-dashboard, rospy }:
buildRosPackage {
  pname = "ros-kinetic-cob-dashboard";
  version = "0.6.15-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_command_tools-release/archive/release/kinetic/cob_dashboard/0.6.15-1.tar.gz";
    name = "0.6.15-1.tar.gz";
    sha256 = "57002c95f78f2b42769390ba2a2042909ae9349c8d68e0b33d7e086d76a4bd03";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ rqt-gui cob-msgs roslib rqt-robot-dashboard rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''cob_dashboard is a modified version of [[pr2_dashboard]].'';
    license = with lib.licenses; [ asl20 ];
  };
}
