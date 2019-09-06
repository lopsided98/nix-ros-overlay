
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rqt-gui, rqt-robot-dashboard, rospy, cob-msgs, roslib }:
buildRosPackage {
  pname = "ros-kinetic-cob-dashboard";
  version = "0.6.14-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_command_tools-release/archive/release/kinetic/cob_dashboard/0.6.14-1.tar.gz";
    name = "0.6.14-1.tar.gz";
    sha256 = "941880c7d0f42d7e6241d9eb57b0698bf57bef851411dd6853f6af90645ba820";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ rqt-gui rqt-robot-dashboard rospy cob-msgs roslib ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''cob_dashboard is a modified version of [[pr2_dashboard]].'';
    license = with lib.licenses; [ asl20 ];
  };
}
