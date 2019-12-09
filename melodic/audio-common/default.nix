
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, audio-play, audio-common-msgs, catkin, sound-play, audio-capture }:
buildRosPackage {
  pname = "ros-melodic-audio-common";
  version = "0.3.3";

  src = fetchurl {
    url = "https://github.com/ros-gbp/audio_common-release/archive/release/melodic/audio_common/0.3.3-0.tar.gz";
    name = "0.3.3-0.tar.gz";
    sha256 = "c30da5fa52747bb15685265588f9da95b14d15bb7f4cb569f954e9bba90cf8a7";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ audio-play audio-common-msgs audio-capture sound-play ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Common code for working with audio in ROS'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
