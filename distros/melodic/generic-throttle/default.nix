
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cv-bridge, pythonPackages, rospy, rostopic }:
buildRosPackage {
  pname = "ros-melodic-generic-throttle";
  version = "0.6.18-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_command_tools-release/archive/release/melodic/generic_throttle/0.6.18-1.tar.gz";
    name = "0.6.18-1.tar.gz";
    sha256 = "f23382729784f970c57341f4a145f301ff6a33e215f78b337ffca4a87cdbbae6";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ cv-bridge rospy rostopic ];
  nativeBuildInputs = [ catkin pythonPackages.setuptools ];

  meta = {
    description = ''This package provides a throttle for ROS topics'';
    license = with lib.licenses; [ asl20 ];
  };
}
