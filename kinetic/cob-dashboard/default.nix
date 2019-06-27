
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rqt-gui, rqt-robot-dashboard, rospy, cob-msgs, roslib }:
buildRosPackage {
  pname = "ros-kinetic-cob-dashboard";
  version = "0.6.12-r1";

  src = fetchurl {
    url = https://github.com/ipa320/cob_command_tools-release/archive/release/kinetic/cob_dashboard/0.6.12-1.tar.gz;
    sha256 = "c9893cbeba69f6854d0c399e7c8891adb822ac65ccddc1ebc73aa03b049f7f46";
  };

  propagatedBuildInputs = [ rqt-gui rqt-robot-dashboard rospy cob-msgs roslib ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''cob_dashboard is a modified version of [[pr2_dashboard]].'';
    license = with lib.licenses; [ asl20 ];
  };
}
