
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, husky-description, joint-state-publisher, joint-state-publisher-gui, launch-ros, robot-state-publisher, rviz2 }:
buildRosPackage {
  pname = "ros-foxy-husky-viz";
  version = "1.0.7-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "clearpath-gbp";
        repo = "husky-release";
        rev = "release/foxy/husky_viz/1.0.7-1";
        sha256 = "sha256-dkEJkgNCRNM/ujJXNN/YmgbNlxHR3uOVEkdVFuMDPv0=";
      };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ husky-description joint-state-publisher joint-state-publisher-gui launch-ros robot-state-publisher rviz2 ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Visualization configuration for Clearpath Husky'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
