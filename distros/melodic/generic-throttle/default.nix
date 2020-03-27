
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cv-bridge, rospy, rostopic }:
buildRosPackage {
  pname = "ros-melodic-generic-throttle";
  version = "0.6.16-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_command_tools-release/archive/release/melodic/generic_throttle/0.6.16-1.tar.gz";
    name = "0.6.16-1.tar.gz";
    sha256 = "4f83ae889cde213636d3036fbf0185ce7c2856a4e229efdde1b3a0c2ef69f94e";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ cv-bridge rospy rostopic ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package provides a throttle for ROS topics'';
    license = with lib.licenses; [ asl20 ];
  };
}
