
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, cmake, libGL, libGLU, openscenegraph }:
buildRosPackage {
  pname = "ros-melodic-uwsim-osgworks";
  version = "3.0.3-r2";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "uji-ros-pkg";
        repo = "uwsim_osgworks-release";
        rev = "release/melodic/uwsim_osgworks/3.0.3-2";
        sha256 = "sha256-haOgU4DIs56qzCLTmqkgQ7RhoFlLFUIFclA5hT2pjz4=";
      };

  buildType = "cmake";
  buildInputs = [ cmake ];
  propagatedBuildInputs = [ boost catkin libGL libGLU openscenegraph ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''The OSG Works library adapted to UWSim. See https://code.google.com/p/osgworks'';
    license = with lib.licenses; [ "LGPL" ];
  };
}
