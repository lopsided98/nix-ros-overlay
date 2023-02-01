
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, dynamic-reconfigure, message-generation, message-runtime, nkf, roscpp, sound-play }:
buildRosPackage {
  pname = "ros-melodic-voice-text";
  version = "2.1.24-r2";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "tork-a";
        repo = "jsk_3rdparty-release";
        rev = "release/melodic/voice_text/2.1.24-2";
        sha256 = "sha256-hkOtOua6/snq3kx6v2TJHl6iEPsXsCU4lJEsSlwHstQ=";
      };

  buildType = "catkin";
  buildInputs = [ catkin message-generation roscpp ];
  propagatedBuildInputs = [ dynamic-reconfigure message-runtime nkf sound-play ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''voice_text (www.voicetext.jp)'';
    license = with lib.licenses; [ "HOYA-License" ];
  };
}
