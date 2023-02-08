
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, uuv-teleop, uuv-trajectory-control }:
buildRosPackage {
  pname = "ros-melodic-eca-a9-control";
  version = "0.1.6";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "uuvsimulator";
        repo = "eca_a9-release";
        rev = "release/melodic/eca_a9_control/0.1.6-0";
        sha256 = "sha256-j9oxYwisAiXFf7B3iYZrX+YzBkct2dxYKfgq/NIaKGw=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ uuv-teleop uuv-trajectory-control ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Configuration and launch files to control the ECA A9 AUV'';
    license = with lib.licenses; [ asl20 ];
  };
}
