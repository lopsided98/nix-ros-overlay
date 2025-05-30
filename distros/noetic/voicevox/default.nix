
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, catkin-virtualenv, python3, sound-play, unzip, wget }:
buildRosPackage {
  pname = "ros-noetic-voicevox";
  version = "2.1.31-r4";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_3rdparty-release/archive/release/noetic/voicevox/2.1.31-4.tar.gz";
    name = "2.1.31-4.tar.gz";
    sha256 = "026bca840121415505e3cc18876d8d015c6d3d0cab987b24470372066e1621c0";
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
