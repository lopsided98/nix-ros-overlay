
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, pilz-utils, roscpp, sensor-msgs }:
buildRosPackage {
  pname = "ros-melodic-pilz-testutils";
  version = "0.6.0-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "PilzDE";
        repo = "pilz_common-release";
        rev = "release/melodic/pilz_testutils/0.6.0-1";
        sha256 = "sha256-caHeVKahvbuTXgAf+LamGOh9hAHd+WyGnY2fhoQDmWE=";
      };

  buildType = "catkin";
  buildInputs = [ catkin pilz-utils roscpp sensor-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains testing utilities used by Pilz packages.'';
    license = with lib.licenses; [ asl20 ];
  };
}
