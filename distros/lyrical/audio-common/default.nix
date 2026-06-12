
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, audio-capture, audio-common-msgs, audio-play, sound-play, sound-play-msgs }:
buildRosPackage {
  pname = "ros-lyrical-audio-common";
  version = "0.4.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/audio_common-release/archive/release/lyrical/audio_common/0.4.0-2.tar.gz";
    name = "0.4.0-2.tar.gz";
    sha256 = "1ca48d469c828009be291fa8fa8d97bfedf505322fed2f379c81db6db1b2f4f9";
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
