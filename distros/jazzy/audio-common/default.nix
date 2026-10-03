
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, audio-capture, audio-common-msgs, audio-play, sound-play, sound-play-msgs }:
buildRosPackage {
  pname = "ros-jazzy-audio-common";
  version = "0.4.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/audio_common-release/archive/release/jazzy/audio_common/0.4.1-1.tar.gz";
    name = "0.4.1-1.tar.gz";
    sha256 = "576060bc65996a7a389c3f1ad6b46381ec0282772d2a685c63e55b3b8d6a40e3";
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
