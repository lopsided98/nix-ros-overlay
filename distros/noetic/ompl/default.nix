
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, cmake, eigen, flann, ode, pkg-config, sd }:
buildRosPackage {
  pname = "ros-noetic-ompl";
  version = "1.6.0-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "ros-gbp";
        repo = "ompl-release";
        rev = "release/noetic/ompl/1.6.0-1";
        sha256 = "sha256-Dst2FtQsK0+EzvSm7GEESWOU8QfMPzhSNNYEIlTNfc0=";
      };

  buildType = "cmake";
  buildInputs = [ cmake pkg-config ];
  propagatedBuildInputs = [ boost eigen flann ode ];
  nativeBuildInputs = [ cmake ];
  
  postFixupHooks = [
    # This bodge is necessary so that the file that the generated -config.cmake file
    # points to an existing directory.
    ''
      ${sd}/bin/sd --string-mode '$${"{prefix}//nix/store"}' '/nix/store' **/*.pc
    ''
  ];
  
  meta = {
    description = ''OMPL is a free sampling-based motion planning library.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
