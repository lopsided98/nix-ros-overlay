
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, ecl-config, ecl-license }:
buildRosPackage {
  pname = "ros-noetic-ecl-converters-lite";
  version = "0.61.6-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "yujinrobot-release";
        repo = "ecl_lite-release";
        rev = "release/noetic/ecl_converters_lite/0.61.6-1";
        sha256 = "sha256-IfnDZd3OkuxUKkpmyp9nEu/l7BHnkCWWtcQlk7sm5Ak=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ ecl-config ecl-license ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''These are a very simple version of some of the functions in ecl_converters 
     suitable for firmware development. That is, there is no use of new, 
     templates or exceptions.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
