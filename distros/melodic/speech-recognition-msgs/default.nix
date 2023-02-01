
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-melodic-speech-recognition-msgs";
  version = "4.3.1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "tork-a";
        repo = "jsk_common_msgs-release";
        rev = "release/melodic/speech_recognition_msgs/4.3.1-0";
        sha256 = "sha256-3SGqTTh3l8nmffe8CZYyzTlOrubjtrYMiZP30H8R1Ps=";
      };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  propagatedBuildInputs = [ message-runtime std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''speech_recognition_msgs'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
