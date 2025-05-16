
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-depth-obstacle-detect-ros-msgs";
  version = "1.0.0-r3";

  src = fetchurl {
    url = "https://github.com/anilsripadarao/depth-obstacle-detect-ros-release/archive/release/noetic/depth_obstacle_detect_ros_msgs/1.0.0-3.tar.gz";
    name = "1.0.0-3.tar.gz";
    sha256 = "9e134454a30cbc67eb2e2ffc0756fa0678b919e79504cb533319bc5d0c17f47a";
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
