
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-melodic-nanomsg";
  version = "0.4.1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "yujinrobot-release";
        repo = "nanomsg-release";
        rev = "release/melodic/nanomsg/0.4.1-0";
        sha256 = "sha256-v4bzLgjcwbgA25MDz6rNdXKErt1ZGo/T0QitDhzBwVQ=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The nanomsg package'';
    license = with lib.licenses; [ mit ];
  };
}
