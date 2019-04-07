
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rosapi, catkin, pythonPackages, rosbridge-library, rosauth, rospy, rosbridge-msgs }:
buildRosPackage {
  pname = "ros-kinetic-rosbridge-server";
  version = "0.11.0";

  src = fetchurl {
    url = https://github.com/RobotWebTools-release/rosbridge_suite-release/archive/release/kinetic/rosbridge_server/0.11.0-0.tar.gz;
    sha256 = "1bef2abd5fee2c7b6713bc1cf336e776b1bdc22b289f851e8282f91c65effa62";
  };

  propagatedBuildInputs = [ pythonPackages.backports_ssl_match_hostname rosbridge-library pythonPackages.twisted rosauth rospy rosapi rosbridge-msgs pythonPackages.tornado ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A WebSocket interface to rosbridge.'';
    #license = lib.licenses.BSD;
  };
}
