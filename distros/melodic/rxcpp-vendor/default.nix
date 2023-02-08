
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-melodic-rxcpp-vendor";
  version = "4.1.0-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "rosin-project";
        repo = "rxcpp_vendor-release";
        rev = "release/melodic/rxcpp_vendor/4.1.0-1";
        sha256 = "sha256-4ZiYFFuAkvXXE989SuJVKdnJP6oeD2yuORvWNX4ym6U=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A vendor package for RxCpp'';
    license = with lib.licenses; [ asl20 ];
  };
}
