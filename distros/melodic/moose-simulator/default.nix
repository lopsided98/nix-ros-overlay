
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, moose-gazebo }:
buildRosPackage {
  pname = "ros-melodic-moose-simulator";
  version = "0.1.3-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "clearpath-gbp";
        repo = "moose_simulator-release";
        rev = "release/melodic/moose_simulator/0.1.3-1";
        sha256 = "sha256-U9TZwlgh4emo139idNrc4XqhrI9k+Ca7+rSu/wB82Pk=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ moose-gazebo ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Packages for simulating Moose'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
