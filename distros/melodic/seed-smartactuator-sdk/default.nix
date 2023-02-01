
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin }:
buildRosPackage {
  pname = "ros-melodic-seed-smartactuator-sdk";
  version = "0.0.5-r3";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "seed-solutions";
        repo = "seed_smartactuator_sdk-release";
        rev = "release/melodic/seed_smartactuator_sdk/0.0.5-3";
        sha256 = "sha256-NI/5dFfTvHW9irF4uBMeVAPi6MYu93eY447rNuxFN8o=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ boost ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The seed_smartactuator_sdk package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
