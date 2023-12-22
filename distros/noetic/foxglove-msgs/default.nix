
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, message-generation, message-runtime, ros-environment, visualization-msgs }:
buildRosPackage {
  pname = "ros-noetic-foxglove-msgs";
  version = "2.3.0-r1";

  src = fetchurl {
    url = "https://github.com/foxglove/ros_foxglove_msgs-release/archive/release/noetic/foxglove_msgs/2.3.0-1.tar.gz";
    name = "2.3.0-1.tar.gz";
    sha256 = "3be5332f073870ea4cc16a10744397e3d151d7608fc9a855adca94700a2dcf38";
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
