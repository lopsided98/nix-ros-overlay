
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, message-generation, catkin, message-runtime }:
buildRosPackage {
  pname = "ros-melodic-audio-common-msgs";
  version = "0.3.3";

  src = fetchurl {
    url = https://github.com/ros-gbp/audio_common-release/archive/release/melodic/audio_common_msgs/0.3.3-0.tar.gz;
    sha256 = "119fea466f5d72ff6fab2bb92fed76cf3665441eb4b6012ff202817c5c42fe02";
  };

  buildInputs = [ message-generation ];
  propagatedBuildInputs = [ message-runtime ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Messages for transmitting audio via ROS'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
