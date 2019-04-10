
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rosapi, catkin, pythonPackages, rosbridge-library, rosauth, rospy }:
buildRosPackage {
  pname = "ros-lunar-rosbridge-server";
  version = "0.10.1";

  src = fetchurl {
    url = https://github.com/RobotWebTools-release/rosbridge_suite-release/archive/release/lunar/rosbridge_server/0.10.1-0.tar.gz;
    sha256 = "370e20561af492a4e80978f037fbdae2c93f5aa6f8ea6df236966024d343465d";
  };

  propagatedBuildInputs = [ pythonPackages.backports_ssl_match_hostname rosbridge-library pythonPackages.twisted rosauth rospy rosapi pythonPackages.tornado ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A WebSocket interface to rosbridge.'';
    #license = lib.licenses.BSD;
  };
}
