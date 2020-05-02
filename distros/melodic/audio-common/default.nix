
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, audio-capture, audio-common-msgs, audio-play, catkin, sound-play }:
buildRosPackage {
  pname = "ros-melodic-audio-common";
  version = "0.3.5-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/audio_common-release/archive/release/melodic/audio_common/0.3.5-1.tar.gz";
    name = "0.3.5-1.tar.gz";
    sha256 = "2bf5dee17349f20dd5c12b136b29eab4ea7abb6fde874e9ca3f7d8a07986b9cb";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ audio-capture audio-common-msgs audio-play sound-play ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Common code for working with audio in ROS'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
