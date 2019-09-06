
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rqt-gui, rqt-robot-dashboard, rospy, cob-msgs, roslib }:
buildRosPackage {
  pname = "ros-melodic-cob-dashboard";
  version = "0.6.14-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_command_tools-release/archive/release/melodic/cob_dashboard/0.6.14-1.tar.gz";
    name = "0.6.14-1.tar.gz";
    sha256 = "7593cb2e8eec98fd4e8d23c9df19ba86d5bf07fff5b21287be46a5359ac422f8";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ rqt-gui rqt-robot-dashboard rospy cob-msgs roslib ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''cob_dashboard is a modified version of [[pr2_dashboard]].'';
    license = with lib.licenses; [ asl20 ];
  };
}
