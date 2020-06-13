
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, python3Packages, rosapi, rosauth, rosbridge-library, rosbridge-msgs, rospy, rostest }:
buildRosPackage {
  pname = "ros-noetic-rosbridge-server";
  version = "0.11.9-r1";

  src = fetchurl {
    url = "https://github.com/RobotWebTools-release/rosbridge_suite-release/archive/release/noetic/rosbridge_server/0.11.9-1.tar.gz";
    name = "0.11.9-1.tar.gz";
    sha256 = "a30d3b450f73bcec182cbaf041dcd25ab082b8e29944fb65eb4db3cf54976f9c";
  };

  buildType = "catkin";
  checkInputs = [ rostest ];
  propagatedBuildInputs = [ python3Packages.autobahn python3Packages.tornado python3Packages.twisted rosapi rosauth rosbridge-library rosbridge-msgs rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A WebSocket interface to rosbridge.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
