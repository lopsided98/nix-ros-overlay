
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, audio-capture, audio-common-msgs, audio-play, catkin, sound-play }:
buildRosPackage {
  pname = "ros-kinetic-audio-common";
  version = "0.3.5-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/audio_common-release/archive/release/kinetic/audio_common/0.3.5-1.tar.gz";
    name = "0.3.5-1.tar.gz";
    sha256 = "c07b9462617918dfeec33f3c6ce22ca2403fc0270ae9d1dd6dbd98817425e901";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ audio-capture audio-common-msgs audio-play sound-play ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Common code for working with audio in ROS'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
