
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cob-msgs, pythonPackages, roslib, rospy, rqt-gui, rqt-robot-dashboard }:
buildRosPackage {
  pname = "ros-melodic-cob-dashboard";
  version = "0.6.19-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_command_tools-release/archive/release/melodic/cob_dashboard/0.6.19-1.tar.gz";
    name = "0.6.19-1.tar.gz";
    sha256 = "391fc6b2b090dd041adf963954984b6e5503a682f72e784317e10513a0bf27f0";
  };

  buildType = "catkin";
  buildInputs = [ catkin pythonPackages.setuptools ];
  propagatedBuildInputs = [ cob-msgs roslib rospy rqt-gui rqt-robot-dashboard ];
  nativeBuildInputs = [ catkin pythonPackages.setuptools ];

  meta = {
    description = ''cob_dashboard is a modified version of [[pr2_dashboard]].'';
    license = with lib.licenses; [ asl20 ];
  };
}
