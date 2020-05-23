
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, audio-capture, audio-common-msgs, audio-play, catkin, sound-play }:
buildRosPackage {
  pname = "ros-noetic-audio-common";
  version = "0.3.5-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/audio_common-release/archive/release/noetic/audio_common/0.3.5-1.tar.gz";
    name = "0.3.5-1.tar.gz";
    sha256 = "abbe10eb4dc989441c1c5f5dc544401c43476076b7cbdc281d7ca2d6deb95168";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ audio-capture audio-common-msgs audio-play sound-play ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Common code for working with audio in ROS'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
