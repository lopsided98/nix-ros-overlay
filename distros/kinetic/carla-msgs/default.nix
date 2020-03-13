
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, message-generation, message-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-kinetic-carla-msgs";
  version = "1.0.1-r1";

  src = fetchurl {
    url = "https://github.com/carla-simulator/ros-carla-msgs-release/archive/release/kinetic/carla_msgs/1.0.1-1.tar.gz";
    name = "1.0.1-1.tar.gz";
    sha256 = "c287805a87b147fd52c225ae811c6f935ae2600d2ff21bd14ae799b8402ac0aa";
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
