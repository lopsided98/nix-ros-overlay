
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, cmake, openscenegraph, uwsim-bullet, uwsim-osgworks }:
buildRosPackage {
  pname = "ros-melodic-uwsim-osgbullet";
  version = "3.0.1-r3";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "uji-ros-pkg";
        repo = "uwsim_osgbullet-release";
        rev = "release/melodic/uwsim_osgbullet/3.0.1-3";
        sha256 = "sha256-/sbcHHRjaUH+73/cNlFfFvvSJ1yEekEUWXFRky6HUvU=";
      };

  buildType = "cmake";
  buildInputs = [ cmake ];
  propagatedBuildInputs = [ boost catkin openscenegraph uwsim-bullet uwsim-osgworks ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''The OSG Bullet library adapted to UWSim. See https://code.google.com/p/osgbullet'';
    license = with lib.licenses; [ "LGPL" ];
  };
}
