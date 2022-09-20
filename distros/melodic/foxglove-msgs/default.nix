
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, message-generation, message-runtime, ros-environment, visualization-msgs }:
buildRosPackage {
  pname = "ros-melodic-foxglove-msgs";
  version = "2.0.0-r1";

  src = fetchurl {
    url = "https://github.com/foxglove/ros_foxglove_msgs-release/archive/release/melodic/foxglove_msgs/2.0.0-1.tar.gz";
    name = "2.0.0-1.tar.gz";
    sha256 = "35a8abe8b7f56b02eedbccb37c5b9c264c34c0d628f4b2084c543d0357a7271d";
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
