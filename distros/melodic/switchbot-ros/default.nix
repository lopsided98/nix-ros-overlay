
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-runtime, pythonPackages, rospy, std-msgs }:
buildRosPackage {
  pname = "ros-melodic-switchbot-ros";
  version = "2.1.23-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_3rdparty-release/archive/release/melodic/switchbot_ros/2.1.23-1.tar.gz";
    name = "2.1.23-1.tar.gz";
    sha256 = "1a8c29d7ac6f11009a88d3110b30613fcbdc80aab88b4b8aa57db63e4bf5b0ef";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ message-runtime pythonPackages.requests rospy std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''use switchbot with ros'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
