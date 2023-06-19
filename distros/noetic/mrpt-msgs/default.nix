
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, message-generation, message-runtime, ros-environment, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-mrpt-msgs";
  version = "0.4.6-r1";

  src = fetchurl {
    url = "https://github.com/mrpt-ros-pkg-release/mrpt_msgs-release/archive/release/noetic/mrpt_msgs/0.4.6-1.tar.gz";
    name = "0.4.6-1.tar.gz";
    sha256 = "d5f5d0b8e196aec8e117de8107b51b643baa0646963854cf94411666e66d5e1f";
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
