
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, hrpsys, openrtm-tools, rostest }:
buildRosPackage {
  pname = "ros-melodic-hrpsys-tools";
  version = "1.4.3-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "tork-a";
        repo = "rtmros_common-release";
        rev = "release/melodic/hrpsys_tools/1.4.3-1";
        sha256 = "sha256-xgcxzSSUTFCdqhpWoriEwEyhiKTMUOTfJsz3QC+poew=";
      };

  buildType = "catkin";
  buildInputs = [ catkin rostest ];
  propagatedBuildInputs = [ hrpsys openrtm-tools ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The hrpsys_tools package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
