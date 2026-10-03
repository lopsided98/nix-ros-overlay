
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, audio-capture, audio-common-msgs, audio-play, sound-play, sound-play-msgs }:
buildRosPackage {
  pname = "ros-kilted-audio-common";
  version = "0.4.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/audio_common-release/archive/release/kilted/audio_common/0.4.1-1.tar.gz";
    name = "0.4.1-1.tar.gz";
    sha256 = "a3612b7702d0b699d7502d56718dcb8551bbce033d19a9c818f73c2a5cf827e3";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ audio-capture audio-common-msgs audio-play sound-play sound-play-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Common code for working with audio in ROS";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
