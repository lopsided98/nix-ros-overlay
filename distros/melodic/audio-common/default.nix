
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, audio-capture, audio-common-msgs, audio-play, catkin, sound-play }:
buildRosPackage {
  pname = "ros-melodic-audio-common";
  version = "0.3.6-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/audio_common-release/archive/release/melodic/audio_common/0.3.6-1.tar.gz";
    name = "0.3.6-1.tar.gz";
    sha256 = "e0e09034c6f8c7787f13025f29a06015773cbeff8b33470abe04213b3f4e0ad0";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ audio-capture audio-common-msgs audio-play sound-play ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Common code for working with audio in ROS'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
