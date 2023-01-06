
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, message-generation, message-runtime, ros-environment, visualization-msgs }:
buildRosPackage {
  pname = "ros-melodic-foxglove-msgs";
  version = "2.1.1-r1";

  src = fetchurl {
    url = "https://github.com/foxglove/ros_foxglove_msgs-release/archive/release/melodic/foxglove_msgs/2.1.1-1.tar.gz";
    name = "2.1.1-1.tar.gz";
    sha256 = "af943480902232e649fc6ffdc27c77c7e2e706a1eaf9ca3e134a14b0ef84dfce";
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
