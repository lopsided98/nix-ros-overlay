
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, ament-lint-common, controller-manager, diff-drive-controller, joint-state-broadcaster }:
buildRosPackage {
  pname = "ros-humble-pmb2-controller-configuration";
  version = "4.0.5-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "pal-gbp";
        repo = "pmb2_robot-gbp";
        rev = "release/humble/pmb2_controller_configuration/4.0.5-1";
        sha256 = "sha256-G6VpRUTCHyxDFBNLuSojL4ItZTpm3J04yZRIWIdIF5Y=";
      };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ controller-manager diff-drive-controller joint-state-broadcaster ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = ''Launch files and scripts needed to configure
    the controllers of the PMB2 robot.'';
    license = with lib.licenses; [ asl20 ];
  };
}
