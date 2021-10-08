
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, message-generation, message-runtime, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-rokubimini-msgs";
  version = "0.6.1-r1";

  src = fetchurl {
    url = "https://gitlab.com/botasys/bota_driver-release/-/archive/release/noetic/rokubimini_msgs/0.6.1-1/bota_driver-release-release-noetic-rokubimini_msgs-0.6.1-1.tar.gz";
    name = "bota_driver-release-release-noetic-rokubimini_msgs-0.6.1-1.tar.gz";
    sha256 = "72425590ddc6ded508477bc5fddabdaf13317dff11080d032dcba291ec728a75";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ geometry-msgs message-generation message-runtime sensor-msgs std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS message and service definitions.'';
    license = with lib.licenses; [ asl20 ];
  };
}
