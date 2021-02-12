
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, message-generation, message-runtime, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-rokubimini-msgs";
  version = "0.5.9-r1";

  src = fetchurl {
    url = "https://gitlab.com/botasys/bota_driver-release/repository/archive.tar.gz?ref=release/noetic/rokubimini_msgs/0.5.9-1";
    name = "archive.tar.gz";
    sha256 = "a09c7a5c37c3abd031998ef376064571b0fb0c3080df0b9e7523e91b3155188c";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ geometry-msgs message-generation message-runtime sensor-msgs std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS message and service definitions.'';
    license = with lib.licenses; [ asl20 ];
  };
}
