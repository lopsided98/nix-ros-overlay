
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, xacro }:
buildRosPackage {
  pname = "ros-melodic-talos-description-calibration";
  version = "1.0.45";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "pal-gbp";
        repo = "talos_robot-release";
        rev = "release/melodic/talos_description_calibration/1.0.45-0";
        sha256 = "sha256-AQ/Z/UMtUc/PTlG4+Y6rV2QITqJ7w1dJpeZyyfqHtaU=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains the description of the hand-eye calibration of the TALOS robot.  The files in this package are used also from the talos_description package.'';
    license = with lib.licenses; [ "CC-BY-NC-ND-3.0" ];
  };
}
