
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, pythonPackages, rosapi, rosauth, rosbridge-library, rosbridge-msgs, rospy, rostest }:
buildRosPackage {
  pname = "ros-melodic-rosbridge-server";
  version = "0.11.14-r1";

  src = fetchurl {
    url = "https://github.com/RobotWebTools-release/rosbridge_suite-release/archive/release/melodic/rosbridge_server/0.11.14-1.tar.gz";
    name = "0.11.14-1.tar.gz";
    sha256 = "f4930786659ffde8fa7b30bb69093d05be004b59117841f5dd0536471b5a22bc";
  };

  buildType = "catkin";
  buildInputs = [ catkin pythonPackages.setuptools ];
  checkInputs = [ rostest ];
  propagatedBuildInputs = [ pythonPackages.autobahn pythonPackages.backports_ssl_match_hostname pythonPackages.tornado pythonPackages.twisted rosapi rosauth rosbridge-library rosbridge-msgs rospy ];
  nativeBuildInputs = [ catkin pythonPackages.setuptools ];

  meta = {
    description = ''A WebSocket interface to rosbridge.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
