
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, lanelet2-core, lanelet2-examples, lanelet2-io, lanelet2-maps, lanelet2-matching, lanelet2-projection, lanelet2-python, lanelet2-routing, lanelet2-traffic-rules, lanelet2-validation, ros-environment }:
buildRosPackage {
  pname = "ros-noetic-lanelet2";
  version = "1.2.0-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "fzi-forschungszentrum-informatik";
        repo = "lanelet2-release";
        rev = "release/noetic/lanelet2/1.2.0-1";
        sha256 = "sha256-6LCbCrQMFxGdiE1pTvgmYivgIMMI+pd7O3AbnIffw/0=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ros-environment ];
  propagatedBuildInputs = [ lanelet2-core lanelet2-examples lanelet2-io lanelet2-maps lanelet2-matching lanelet2-projection lanelet2-python lanelet2-routing lanelet2-traffic-rules lanelet2-validation ];
  nativeBuildInputs = [ catkin ros-environment ];

  meta = {
    description = ''Meta-package for lanelet2'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
