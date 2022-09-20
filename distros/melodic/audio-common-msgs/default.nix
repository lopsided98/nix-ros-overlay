
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime }:
buildRosPackage {
  pname = "ros-melodic-audio-common-msgs";
  version = "0.3.15-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/audio_common-release/archive/release/melodic/audio_common_msgs/0.3.15-1.tar.gz";
    name = "0.3.15-1.tar.gz";
    sha256 = "17fdb6ab600fc71d9c68618786824660a5aba4f4b0d27a21a0c07bcf087f3475";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  propagatedBuildInputs = [ message-runtime ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Messages for transmitting audio via ROS'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
