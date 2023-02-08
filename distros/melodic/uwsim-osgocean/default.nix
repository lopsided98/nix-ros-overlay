
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, cmake, fftw, fftwSinglePrec, libGL, libGLU, openscenegraph }:
buildRosPackage {
  pname = "ros-melodic-uwsim-osgocean";
  version = "1.0.4-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "uji-ros-pkg";
        repo = "uwsim_osgocean-release";
        rev = "release/melodic/uwsim_osgocean/1.0.4-1";
        sha256 = "sha256-dYAw3dtxJFEpx/oNh6Vu/GvlEVWTdFjQ1ENRADz2cKU=";
      };

  buildType = "cmake";
  buildInputs = [ cmake ];
  propagatedBuildInputs = [ boost catkin fftw fftwSinglePrec libGL libGLU openscenegraph ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''The OSG Ocean library adapted to UWSim. See https://code.google.com/p/osgocean'';
    license = with lib.licenses; [ "LGPL" ];
  };
}
