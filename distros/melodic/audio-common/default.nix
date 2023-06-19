
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, audio-capture, audio-common-msgs, audio-play, catkin, sound-play }:
buildRosPackage {
  pname = "ros-melodic-audio-common";
  version = "0.3.17-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/audio_common-release/archive/release/melodic/audio_common/0.3.17-1.tar.gz";
    name = "0.3.17-1.tar.gz";
    sha256 = "1657818597d617f39525ba8ab9eb8c016cb5a11f03bdf38580c18d6c20664e77";
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
