
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, pythonPackages, rosapi, rosauth, rosbridge-library, rosbridge-msgs, rospy, rostest }:
buildRosPackage {
  pname = "ros-melodic-rosbridge-server";
  version = "0.11.12-r1";

  src = fetchurl {
    url = "https://github.com/RobotWebTools-release/rosbridge_suite-release/archive/release/melodic/rosbridge_server/0.11.12-1.tar.gz";
    name = "0.11.12-1.tar.gz";
    sha256 = "987a354ccf6d43b3c64f822a1f8d0f0fec0b6190fd5ddc5057e9c1c5e2f0a280";
  };

  buildType = "catkin";
  checkInputs = [ rostest ];
  propagatedBuildInputs = [ pythonPackages.autobahn pythonPackages.backports_ssl_match_hostname pythonPackages.tornado pythonPackages.twisted rosapi rosauth rosbridge-library rosbridge-msgs rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A WebSocket interface to rosbridge.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
