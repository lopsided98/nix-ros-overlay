
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rosapi, rosbridge-library, catkin, pythonPackages, rosbridge-msgs, rosauth, rospy }:
buildRosPackage {
  pname = "ros-melodic-rosbridge-server";
  version = "0.11.3-r1";

  src = fetchurl {
    url = "https://github.com/RobotWebTools-release/rosbridge_suite-release/archive/release/melodic/rosbridge_server/0.11.3-1.tar.gz";
    name = "0.11.3-1.tar.gz";
    sha256 = "a684e9312df285ca883597f446427e9c6955a790ada9b97f67c40e2ccc0cc5f8";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ rosapi rosbridge-library rosbridge-msgs rosauth pythonPackages.tornado pythonPackages.twisted rospy pythonPackages.backports_ssl_match_hostname ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A WebSocket interface to rosbridge.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
