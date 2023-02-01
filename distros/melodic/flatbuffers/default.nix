
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-melodic-flatbuffers";
  version = "1.1.0";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "yujinrobot-release";
        repo = "flatbuffers-release";
        rev = "release/melodic/flatbuffers/1.1.0-0";
        sha256 = "sha256-2PV4s67rvz8Vq6OlGA/IhNZiUq3eJ+p+bD7I1GCevls=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Google flatbuffers.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
