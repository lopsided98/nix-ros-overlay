
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rosapi, catkin, pythonPackages, rosbridge-library, rosauth, rospy, rosbridge-msgs }:
buildRosPackage {
  pname = "ros-kinetic-rosbridge-server";
  version = "0.11.2-r1";

  src = fetchurl {
    url = https://github.com/RobotWebTools-release/rosbridge_suite-release/archive/release/kinetic/rosbridge_server/0.11.2-1.tar.gz;
    sha256 = "a9a7ab9037ede39f98ecae32bbfe51f930484529fff6b294a36120100c7f663f";
  };

  propagatedBuildInputs = [ rosapi pythonPackages.backports_ssl_match_hostname rosbridge-library pythonPackages.twisted rosauth rospy rosbridge-msgs pythonPackages.tornado ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A WebSocket interface to rosbridge.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
