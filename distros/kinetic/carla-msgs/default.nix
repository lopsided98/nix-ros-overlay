
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, message-generation, message-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-kinetic-carla-msgs";
  version = "1.1.0-r1";

  src = fetchurl {
    url = "https://github.com/carla-simulator/ros-carla-msgs-release/archive/release/kinetic/carla_msgs/1.1.0-1.tar.gz";
    name = "1.1.0-1.tar.gz";
    sha256 = "5a84c1211bee6e57aab7c116ffaed102d9f35001fc6b249b1f301504628cbe49";
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
