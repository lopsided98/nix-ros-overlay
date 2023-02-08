
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, cmake, doxygen, dynamic-graph, eigen, eigenpy, git, python3, python3Packages }:
buildRosPackage {
  pname = "ros-noetic-dynamic-graph-python";
  version = "4.0.11-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "stack-of-tasks";
        repo = "dynamic-graph-python-ros-release";
        rev = "release/noetic/dynamic-graph-python/4.0.11-1";
        sha256 = "sha256-U7JPXNQmY2HZ3ts4GGNSg8Rzw99vdRZIJ2eqJfkWYOQ=";
      };

  buildType = "cmake";
  buildInputs = [ cmake doxygen git ];
  propagatedBuildInputs = [ boost catkin dynamic-graph eigen eigenpy python3 python3Packages.numpy ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''Dynamic graph library Python bindings'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
