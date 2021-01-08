
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, gx-sound-msgs, rospy, vorbis-tools }:
buildRosPackage {
  pname = "ros-kinetic-gx-sound-player";
  version = "0.2.2";

  src = fetchurl {
    url = "https://github.com/groove-x/gx_sound-release/archive/release/kinetic/gx_sound_player/0.2.2-0.tar.gz";
    name = "0.2.2-0.tar.gz";
    sha256 = "564ce007cb5481ca0c85addfffa092708e40e513c73627422e49782a945259d5";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ gx-sound-msgs rospy vorbis-tools ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The gx_sound_player package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
