
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, ros-environment, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-udp-msgs";
  version = "0.0.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/udp_msgs-release/archive/release/noetic/udp_msgs/0.0.5-1.tar.gz";
    name = "0.0.5-1.tar.gz";
    sha256 = "1e36162920cf42ebca4d26a01fad304e213d448f6272f2662c9c60994c9c0f68";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ message-generation message-runtime ros-environment std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "ROS / ROS2 udp_msgs package";
    license = with lib.licenses; [ mit ];
  };
}
