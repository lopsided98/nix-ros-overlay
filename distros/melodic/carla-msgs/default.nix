
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, message-generation, message-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-melodic-carla-msgs";
  version = "1.1.0-r1";

  src = fetchurl {
    url = "https://github.com/carla-simulator/ros-carla-msgs-release/archive/release/melodic/carla_msgs/1.1.0-1.tar.gz";
    name = "1.1.0-1.tar.gz";
    sha256 = "389e435f51057fdca2134d0aee0d9ddae099d6f7acb90eab95f1e5d784138a5c";
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
