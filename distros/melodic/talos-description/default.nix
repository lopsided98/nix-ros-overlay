
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rostest, talos-description-calibration, talos-description-inertial, urdf-test }:
buildRosPackage {
  pname = "ros-melodic-talos-description";
  version = "1.0.45";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "pal-gbp";
        repo = "talos_robot-release";
        rev = "release/melodic/talos_description/1.0.45-0";
        sha256 = "sha256-8f2UUM5XZKb4du8Zso8+gOHEdCXDx0a2kGPdUHUkHFU=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ rostest urdf-test ];
  propagatedBuildInputs = [ talos-description-calibration talos-description-inertial ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The talos_description package'';
    license = with lib.licenses; [ "Proprietary" ];
  };
}
