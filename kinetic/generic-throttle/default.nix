
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cv-bridge, rostopic, rospy }:
buildRosPackage {
  pname = "ros-kinetic-generic-throttle";
  version = "0.6.11";

  src = fetchurl {
    url = https://github.com/ipa320/cob_command_tools-release/archive/release/kinetic/generic_throttle/0.6.11-0.tar.gz;
    sha256 = "974b4b9e6cbe876d2fb4429dcd58f89e0cff0d17f1023a968d95352ede31ffe5";
  };

  propagatedBuildInputs = [ cv-bridge rostopic rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package provides a throttle for ROS topics'';
    license = with lib.licenses; [ asl20 ];
  };
}
