
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, audio-capture, audio-common-msgs, audio-play, catkin, sound-play }:
buildRosPackage {
  pname = "ros-melodic-audio-common";
  version = "0.3.15-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/audio_common-release/archive/release/melodic/audio_common/0.3.15-1.tar.gz";
    name = "0.3.15-1.tar.gz";
    sha256 = "25fbdc3b8b59ed6301d87b55e4cf249fab4972dcf67eece12c71d8331bd0cb57";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ audio-capture audio-common-msgs audio-play sound-play ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Common code for working with audio in ROS'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
