
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, network-interface, roslint }:
buildRosPackage {
  pname = "ros-melodic-ibeo-core";
  version = "2.0.2";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "astuff";
        repo = "ibeo_core-release";
        rev = "release/melodic/ibeo_core/2.0.2-0";
        sha256 = "sha256-EeoNy61hClwo2+0CkVkiR8sttoWOmXHQpo1WXfIURRg=";
      };

  buildType = "catkin";
  buildInputs = [ catkin roslint ];
  propagatedBuildInputs = [ network-interface ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The ibeo_core package'';
    license = with lib.licenses; [ mit ];
  };
}
