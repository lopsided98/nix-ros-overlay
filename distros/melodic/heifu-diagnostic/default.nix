
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, mavros, roscpp, roslib, std-msgs }:
buildRosPackage {
  pname = "ros-melodic-heifu-diagnostic";
  version = "0.7.7-r2";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "BV-OpenSource";
        repo = "heifu-release";
        rev = "release/melodic/heifu_diagnostic/0.7.7-2";
        sha256 = "sha256-FCwN+f7pdc30y1Fwo4uC1rGOHY9EWhvcq8juJNlJVSQ=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ mavros roscpp roslib std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Heifu diagnostic to get GPS status'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
