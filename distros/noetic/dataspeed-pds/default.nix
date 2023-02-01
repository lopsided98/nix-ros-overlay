
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, dataspeed-pds-can, dataspeed-pds-lcm, dataspeed-pds-msgs, dataspeed-pds-scripts }:
buildRosPackage {
  pname = "ros-noetic-dataspeed-pds";
  version = "1.0.6-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "DataspeedInc-release";
        repo = "dataspeed_pds-release";
        rev = "release/noetic/dataspeed_pds/1.0.6-1";
        sha256 = "sha256-XOk61kLYuHHf1FM9ziU/6qigUSLORr+O3OdcjMIADfw=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ dataspeed-pds-can dataspeed-pds-lcm dataspeed-pds-msgs dataspeed-pds-scripts ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Interface to the Dataspeed Inc. Intelligent Power Distribution System (iPDS)'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
