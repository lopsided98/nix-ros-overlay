
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, robot-localization }:
buildRosPackage {
  pname = "ros-melodic-volta-localization";
  version = "1.1.1-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "botsync-gbp";
        repo = "volta-release";
        rev = "release/melodic/volta_localization/1.1.1-1";
        sha256 = "sha256-pwIlcwiQ9m3tcFCSr0vNDGh4xksfOjdNvi64hRuhR8k=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ robot-localization ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The volta_localization package'';
    license = with lib.licenses; [ bsd3 ];
  };
}
