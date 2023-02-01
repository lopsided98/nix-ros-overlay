
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, cmake, eigen, libGL, libGLU, suitesparse }:
buildRosPackage {
  pname = "ros-noetic-libg2o";
  version = "2020.5.3-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "ros-gbp";
        repo = "libg2o-release";
        rev = "release/noetic/libg2o/2020.5.3-1";
        sha256 = "sha256-j6LaiZyrX8D37hsRiSJ//h5u3XYVWwBUigmkNiydWXU=";
      };

  buildType = "cmake";
  buildInputs = [ cmake ];
  propagatedBuildInputs = [ boost catkin eigen libGL libGLU suitesparse ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''The libg2o library from http://openslam.org/g2o.html'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
