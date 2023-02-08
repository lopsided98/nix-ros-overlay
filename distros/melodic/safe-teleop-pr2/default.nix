
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, joy, pr2-teleop, safe-teleop-base }:
buildRosPackage {
  pname = "ros-melodic-safe-teleop-pr2";
  version = "0.0.3-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "ros-gbp";
        repo = "shared_autonomy_manipulation-release";
        rev = "release/melodic/safe_teleop_pr2/0.0.3-1";
        sha256 = "sha256-wRLdRtVQdFs0nxlVLcsRQDTIAaQE+BEZ9/Za3CXmgU0=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ joy pr2-teleop safe-teleop-base ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Launch files for running safe_teleop_base on pr2'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
