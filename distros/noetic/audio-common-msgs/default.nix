
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-audio-common-msgs";
  version = "0.3.18-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/audio_common-release/archive/release/noetic/audio_common_msgs/0.3.18-1.tar.gz";
    name = "0.3.18-1.tar.gz";
    sha256 = "e7bef1878d2b6dbf26ed258146035e1d77e787463a50a0cab1790119d39f33d3";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  propagatedBuildInputs = [ message-runtime std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "Messages for transmitting audio via ROS";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
