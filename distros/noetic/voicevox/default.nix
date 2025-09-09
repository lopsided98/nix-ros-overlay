
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, catkin-virtualenv, python3, sound-play, unzip, wget }:
buildRosPackage {
  pname = "ros-noetic-voicevox";
  version = "2.1.31-r3";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_3rdparty-release/archive/release/noetic/voicevox/2.1.31-3.tar.gz";
    name = "2.1.31-3.tar.gz";
    sha256 = "e17e191c9ae6bb0113e6048fcf01397633a078fa9da43f8ce663b2cd60e39e8b";
  };

  buildType = "catkin";
  buildInputs = [ catkin catkin-virtualenv unzip wget ];
  propagatedBuildInputs = [ python3 sound-play ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "VOICEVOX: AI speech synthesis";
    license = with lib.licenses; [ mit ];
  };
}
