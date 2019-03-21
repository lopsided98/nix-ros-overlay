
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, audio-capture, catkin, sound-play, audio-common-msgs, audio-play }:
buildRosPackage {
  pname = "ros-kinetic-audio-common";
  version = "0.3.3";

  src = fetchurl {
    url = https://github.com/ros-gbp/audio_common-release/archive/release/kinetic/audio_common/0.3.3-0.tar.gz;
    sha256 = "ddfb1b23cd49fd3996f482ac979ffd547a0390293470b7933c28d85e83a04037";
  };

  propagatedBuildInputs = [ audio-capture sound-play audio-common-msgs audio-play ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Common code for working with audio in ROS'';
    #license = lib.licenses.BSD;
  };
}
