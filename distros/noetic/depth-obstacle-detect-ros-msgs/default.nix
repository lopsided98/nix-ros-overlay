
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-depth-obstacle-detect-ros-msgs";
  version = "1.0.0-r2";

  src = fetchurl {
    url = "https://github.com/anilsripadarao/depth-obstacle-detect-ros-release/archive/release/noetic/depth_obstacle_detect_ros_msgs/1.0.0-2.tar.gz";
    name = "1.0.0-2.tar.gz";
    sha256 = "a00b4ffecc61742f70463a7b29046d221904070a7786ada6ed0f04bffa22f9ee";
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
