
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, python3Packages, pythonPackages, splsm-7 }:
buildRosPackage {
  pname = "ros-rolling-splsm-7-conversion";
  version = "3.0.1-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "ros2-gbp";
        repo = "r2r_spl-release";
        rev = "release/rolling/splsm_7_conversion/3.0.1-1";
        sha256 = "sha256-hot8TlsdjVjgyVkdoUFaIy47vVP67OUYUwJHsdfSm0M=";
      };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ python3Packages.construct splsm-7 ];

  meta = {
    description = ''Converts Standard Platform League Standard Message V7 between ROS msg and UDP raw bytes'';
    license = with lib.licenses; [ asl20 ];
  };
}
