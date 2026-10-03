
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, audio-capture, audio-common-msgs, audio-play, sound-play, sound-play-msgs }:
buildRosPackage {
  pname = "ros-rolling-audio-common";
  version = "0.4.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/audio_common-release/archive/release/rolling/audio_common/0.4.1-1.tar.gz";
    name = "0.4.1-1.tar.gz";
    sha256 = "01a74f15f34c5e52053a254766ce71eb5dd68cebed3699bcee6daa1e9211c8f9";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ audio-capture audio-common-msgs audio-play sound-play sound-play-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Common code for working with audio in ROS";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
