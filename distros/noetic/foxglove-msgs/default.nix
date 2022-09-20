
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, message-generation, message-runtime, ros-environment, visualization-msgs }:
buildRosPackage {
  pname = "ros-noetic-foxglove-msgs";
  version = "2.0.0-r1";

  src = fetchurl {
    url = "https://github.com/foxglove/ros_foxglove_msgs-release/archive/release/noetic/foxglove_msgs/2.0.0-1.tar.gz";
    name = "2.0.0-1.tar.gz";
    sha256 = "d9ad610609da0ebecb8b5d7b216bc9c7e6fa20c0c24a2e8e843d0cf7dca7cb87";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ros-environment ];
  propagatedBuildInputs = [ geometry-msgs message-runtime visualization-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''foxglove_msgs provides visualization messages that are supported by Foxglove Studio.'';
    license = with lib.licenses; [ mit ];
  };
}
