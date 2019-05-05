
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, audio-capture, catkin, sound-play, audio-common-msgs, audio-play }:
buildRosPackage {
  pname = "ros-lunar-audio-common";
  version = "0.3.3";

  src = fetchurl {
    url = https://github.com/ros-gbp/audio_common-release/archive/release/lunar/audio_common/0.3.3-0.tar.gz;
    sha256 = "b4bfa9daf8034ae43c923aeb508922f1e41dff612580c98289f81b430bcc6818";
  };

  propagatedBuildInputs = [ audio-capture sound-play audio-common-msgs audio-play ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Common code for working with audio in ROS'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
