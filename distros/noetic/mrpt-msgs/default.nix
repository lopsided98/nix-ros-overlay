
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, message-generation, message-runtime, ros-environment, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-mrpt-msgs";
  version = "0.4.7-r1";

  src = fetchurl {
    url = "https://github.com/mrpt-ros-pkg-release/mrpt_msgs-release/archive/release/noetic/mrpt_msgs/0.4.7-1.tar.gz";
    name = "0.4.7-1.tar.gz";
    sha256 = "30b5908a7fe2b661d5782d20cbbc41ef24b333f05b2d1f2cef97448e34c04091";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ros-environment ];
  propagatedBuildInputs = [ geometry-msgs message-runtime sensor-msgs std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS messages for MRPT classes and objects'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
