
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, message-generation, message-runtime, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-rokubimini-msgs";
  version = "0.6.0-r3";

  src = fetchurl {
    url = "https://gitlab.com/botasys/bota_driver-release/-/archive/release/noetic/rokubimini_msgs/0.6.0-3/bota_driver-release-release-noetic-rokubimini_msgs-0.6.0-3.tar.gz";
    name = "bota_driver-release-release-noetic-rokubimini_msgs-0.6.0-3.tar.gz";
    sha256 = "506e071f627848773cd93981e1a6f13f807e83920af9125d3f03eeb874ce3f9c";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ geometry-msgs message-generation message-runtime sensor-msgs std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS message and service definitions.'';
    license = with lib.licenses; [ asl20 ];
  };
}
