
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, python3Packages, rosapi, rosauth, rosbridge-library, rosbridge-msgs, rospy, rostest }:
buildRosPackage {
  pname = "ros-noetic-rosbridge-server";
  version = "0.11.15-r1";

  src = fetchurl {
    url = "https://github.com/RobotWebTools-release/rosbridge_suite-release/archive/release/noetic/rosbridge_server/0.11.15-1.tar.gz";
    name = "0.11.15-1.tar.gz";
    sha256 = "49cac7eaee82a43692b38a06780ded92c4bd1b8fd078205ce3b357e86a6b8431";
  };

  buildType = "catkin";
  checkInputs = [ rostest ];
  propagatedBuildInputs = [ python3Packages.autobahn python3Packages.tornado python3Packages.twisted rosapi rosauth rosbridge-library rosbridge-msgs rospy ];
  nativeBuildInputs = [ catkin python3Packages.setuptools ];

  meta = {
    description = ''A WebSocket interface to rosbridge.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
