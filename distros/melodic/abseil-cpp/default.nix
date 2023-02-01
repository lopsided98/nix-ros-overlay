
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rsync }:
buildRosPackage {
  pname = "ros-melodic-abseil-cpp";
  version = "0.4.2-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "Eurecat";
        repo = "abseil_cpp-release";
        rev = "release/melodic/abseil_cpp/0.4.2-1";
        sha256 = "sha256-UE4G+28s6BGpOJD3QiTA1uY2nfl+hm5/ql5+kYLM8mY=";
      };

  buildType = "catkin";
  buildInputs = [ catkin rsync ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The abseil_cpp package'';
    license = with lib.licenses; [ "Apache" ];
  };
}
