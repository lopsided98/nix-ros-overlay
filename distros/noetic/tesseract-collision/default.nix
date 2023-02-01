
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, bullet, cmake, console-bridge, eigen, fcl, gbenchmark, gtest, libyamlcpp, llvmPackages, ros-industrial-cmake-boilerplate, tesseract-common, tesseract-geometry, tesseract-scene-graph, tesseract-support }:
buildRosPackage {
  pname = "ros-noetic-tesseract-collision";
  version = "0.13.1-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "ros-industrial-release";
        repo = "tesseract-release";
        rev = "release/noetic/tesseract_collision/0.13.1-1";
        sha256 = "sha256-FrtqR2bflcpCls9PUgHtzJOWYQUpgGqA0DOaQMblWog=";
      };

  buildType = "cmake";
  buildInputs = [ cmake ros-industrial-cmake-boilerplate ];
  checkInputs = [ gbenchmark gtest tesseract-scene-graph ];
  propagatedBuildInputs = [ boost bullet console-bridge eigen fcl libyamlcpp llvmPackages.openmp tesseract-common tesseract-geometry tesseract-support ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''The tesseract_collision package'';
    license = with lib.licenses; [ asl20 ];
  };
}
