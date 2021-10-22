
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, message-generation, message-runtime, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-rokubimini-msgs";
  version = "0.6.1-r2";

  src = fetchurl {
    url = "https://gitlab.com/botasys/bota_driver-release/-/archive/release/noetic/rokubimini_msgs/0.6.1-2/bota_driver-release-release-noetic-rokubimini_msgs-0.6.1-2.tar.gz";
    name = "bota_driver-release-release-noetic-rokubimini_msgs-0.6.1-2.tar.gz";
    sha256 = "c8910a1731b77ae3022d2d5fa117f5240b704094427c0d72e5a3921edd480b81";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ geometry-msgs message-generation message-runtime sensor-msgs std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS message and service definitions.'';
    license = with lib.licenses; [ asl20 ];
  };
}
