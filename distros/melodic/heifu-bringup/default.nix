
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, heifu-description, heifu-mavros, heifu-msgs, heifu-safety, heifu-tools }:
buildRosPackage {
  pname = "ros-melodic-heifu-bringup";
  version = "0.7.7-r2";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "BV-OpenSource";
        repo = "heifu-release";
        rev = "release/melodic/heifu_bringup/0.7.7-2";
        sha256 = "sha256-QXJo3jsNR0/843SKs+Qg4yIxFHHLj/oW+nUwfT6Kymw=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ heifu-description heifu-mavros heifu-msgs heifu-safety heifu-tools ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Heifu is a ROS driver for PDMFC and BEV drone'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
