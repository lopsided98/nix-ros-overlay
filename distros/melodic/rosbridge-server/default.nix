
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, pythonPackages, rosapi, rosauth, rosbridge-library, rosbridge-msgs, rospy, rostest }:
buildRosPackage {
  pname = "ros-melodic-rosbridge-server";
  version = "0.11.15-r1";

  src = fetchurl {
    url = "https://github.com/RobotWebTools-release/rosbridge_suite-release/archive/release/melodic/rosbridge_server/0.11.15-1.tar.gz";
    name = "0.11.15-1.tar.gz";
    sha256 = "5bde6b2922bb7a39a0309c302ad3d51d182ba1ac8f141d054014a5f3fb9aeb70";
  };

  buildType = "catkin";
  checkInputs = [ rostest ];
  propagatedBuildInputs = [ pythonPackages.autobahn pythonPackages.backports_ssl_match_hostname pythonPackages.tornado pythonPackages.twisted rosapi rosauth rosbridge-library rosbridge-msgs rospy ];
  nativeBuildInputs = [ catkin pythonPackages.setuptools ];

  meta = {
    description = ''A WebSocket interface to rosbridge.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
