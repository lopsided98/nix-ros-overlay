
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, code-coverage, pilz-utils, roscpp, rostest, sensor-msgs }:
buildRosPackage {
  pname = "ros-noetic-pilz-testutils";
  version = "0.7.2-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "PilzDE";
        repo = "pilz_common-release";
        rev = "release/noetic/pilz_testutils/0.7.2-1";
        sha256 = "sha256-gwY6PWuc05SFqc99zzjIKQmOotU6uKfekbuDpss2dUE=";
      };

  buildType = "catkin";
  buildInputs = [ catkin pilz-utils roscpp sensor-msgs ];
  checkInputs = [ code-coverage rostest ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains testing utilities used by Pilz packages.'';
    license = with lib.licenses; [ asl20 ];
  };
}
