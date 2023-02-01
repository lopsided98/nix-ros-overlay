
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-catch2, eigen, libccd, rmf-cmake-uncrustify, rmf-utils }:
buildRosPackage {
  pname = "ros-foxy-rmf-traffic";
  version = "1.4.0-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "ros2-gbp";
        repo = "rmf_traffic-release";
        rev = "release/foxy/rmf_traffic/1.4.0-1";
        sha256 = "sha256-RuTAkrEF7VPPlx0KggMEtfzek8MnOVGr7200Rx91zu4=";
      };

  buildType = "cmake";
  checkInputs = [ ament-cmake-catch2 rmf-cmake-uncrustify ];
  propagatedBuildInputs = [ eigen libccd rmf-utils ];

  meta = {
    description = ''Package for managing traffic in the Robotics Middleware Framework'';
    license = with lib.licenses; [ asl20 ];
  };
}
