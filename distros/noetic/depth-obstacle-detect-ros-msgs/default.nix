
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-depth-obstacle-detect-ros-msgs";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/anilsripadarao/depth-obstacle-detect-ros-release/archive/release/noetic/depth_obstacle_detect_ros_msgs/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "c62efa28f241a7c3ddf297136729e05a0506e3df039ba9ca583d2e6781185809";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  propagatedBuildInputs = [ message-runtime std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "The obstacle_msg package";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
