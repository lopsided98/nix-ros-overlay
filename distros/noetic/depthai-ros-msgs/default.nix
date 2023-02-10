
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, message-generation, message-runtime, sensor-msgs, std-msgs, vision-msgs }:
buildRosPackage {
  pname = "ros-noetic-depthai-ros-msgs";
  version = "2.6.1-r2";

  src = fetchurl {
    url = "https://github.com/luxonis/depthai-ros-release/archive/release/noetic/depthai_ros_msgs/2.6.1-2.tar.gz";
    name = "2.6.1-2.tar.gz";
    sha256 = "197f4203cb13cdc836e58c8e017c1786b109d767d0b579649d43209f1138dbed";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  propagatedBuildInputs = [ geometry-msgs message-runtime sensor-msgs std-msgs vision-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Package to keep interface independent of the driver'';
    license = with lib.licenses; [ mit ];
  };
}
