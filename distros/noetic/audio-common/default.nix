
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, audio-capture, audio-common-msgs, audio-play, catkin, sound-play }:
buildRosPackage {
  pname = "ros-noetic-audio-common";
  version = "0.3.17-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/audio_common-release/archive/release/noetic/audio_common/0.3.17-1.tar.gz";
    name = "0.3.17-1.tar.gz";
    sha256 = "ade8b86b9d1c1c5d47367df4905a53890d87a91dbfea15d4563fee70d4bdf7bf";
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
