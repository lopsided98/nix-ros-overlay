
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rosapi, catkin, pythonPackages, rosbridge-library, rosauth, rospy, rosbridge-msgs }:
buildRosPackage {
  pname = "ros-melodic-rosbridge-server";
  version = "0.11.0";

  src = fetchurl {
    url = https://github.com/RobotWebTools-release/rosbridge_suite-release/archive/release/melodic/rosbridge_server/0.11.0-0.tar.gz;
    sha256 = "49f8201f557a79486c03ea3d4f7b10a57d55b50b43248459f7dd55fd859f9c97";
  };

  propagatedBuildInputs = [ rosapi pythonPackages.backports_ssl_match_hostname rosbridge-library pythonPackages.twisted rosauth rospy rosbridge-msgs pythonPackages.tornado ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A WebSocket interface to rosbridge.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
