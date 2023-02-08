
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, unzip }:
buildRosPackage {
  pname = "ros-melodic-convex-decomposition";
  version = "0.1.12";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "ros-gbp";
        repo = "convex_decomposition-release";
        rev = "release/melodic/convex_decomposition/0.1.12-0";
        sha256 = "sha256-GzzlVqeAQWWsiZq7qhDDtVI8i7bh/4pomZnPYy7SWHw=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ unzip ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Convex Decomposition Tool for Robot Model'';
    license = with lib.licenses; [ mit ];
  };
}
