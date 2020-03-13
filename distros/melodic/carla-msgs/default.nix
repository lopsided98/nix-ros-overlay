
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, message-generation, message-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-melodic-carla-msgs";
  version = "1.0.1-r1";

  src = fetchurl {
    url = "https://github.com/carla-simulator/ros-carla-msgs-release/archive/release/melodic/carla_msgs/1.0.1-1.tar.gz";
    name = "1.0.1-1.tar.gz";
    sha256 = "0b66cc070a8c1950429f5fa6975bdcfbe1b47508cfcf6b5fc18c8f5b6ac4f3ed";
  };

  buildType = "catkin";
  buildInputs = [ message-generation ];
  propagatedBuildInputs = [ geometry-msgs message-runtime std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The carla_msgs package'';
    license = with lib.licenses; [ mit ];
  };
}
