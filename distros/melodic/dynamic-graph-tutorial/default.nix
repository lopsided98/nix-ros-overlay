
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, cmake, doxygen, dynamic-graph, dynamic-graph-python, git }:
buildRosPackage {
  pname = "ros-melodic-dynamic-graph-tutorial";
  version = "1.3.5-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "stack-of-tasks";
        repo = "dynamic-graph-tutorial-ros-release";
        rev = "release/melodic/dynamic-graph-tutorial/1.3.5-1";
        sha256 = "sha256-ELnfC/MTzDXBwxQsoY5Lmi/vhD8Kgs7SUqGPGJa0Efo=";
      };

  buildType = "cmake";
  buildInputs = [ cmake doxygen dynamic-graph dynamic-graph-python git ];
  propagatedBuildInputs = [ boost catkin ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''Dynamic graph tutorial'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
