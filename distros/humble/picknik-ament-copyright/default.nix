
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, pythonPackages }:
buildRosPackage {
  pname = "ros-humble-picknik-ament-copyright";
  version = "0.0.2-r3";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "ros2-gbp";
        repo = "picknik_ament_copyright-release";
        rev = "release/humble/picknik_ament_copyright/0.0.2-3";
        sha256 = "sha256-zw0URrOQbcL7fo+BgOUHgI0yqf0DDRVGnOOxbJmog48=";
      };

  buildType = "ament_python";
  checkInputs = [ ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ ament-copyright ];

  meta = {
    description = ''Check PickNik-specific copyright headers.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
