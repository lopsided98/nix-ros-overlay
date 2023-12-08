
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, ros-environment, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-udp-msgs";
  version = "0.0.4-r1";

  src = fetchurl {
    url = "https://github.com/flynneva/udp_msgs-release/archive/release/noetic/udp_msgs/0.0.4-1.tar.gz";
    name = "0.0.4-1.tar.gz";
    sha256 = "39fc480ca735fca400aa241c2cb26e34bc140e01f7228afa36e05bf99a9aca47";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ message-generation message-runtime ros-environment std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS / ROS2 udp_msgs package'';
    license = with lib.licenses; [ mit ];
  };
}
