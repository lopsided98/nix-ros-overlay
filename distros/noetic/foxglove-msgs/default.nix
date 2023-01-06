
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, message-generation, message-runtime, ros-environment, visualization-msgs }:
buildRosPackage {
  pname = "ros-noetic-foxglove-msgs";
  version = "2.1.1-r1";

  src = fetchurl {
    url = "https://github.com/foxglove/ros_foxglove_msgs-release/archive/release/noetic/foxglove_msgs/2.1.1-1.tar.gz";
    name = "2.1.1-1.tar.gz";
    sha256 = "bc1f40409bf7589dc2d894001df400ffd1d12f40e7b6df34491f711719a4eecd";
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
