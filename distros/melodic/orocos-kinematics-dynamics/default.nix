
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, orocos-kdl, python-orocos-kdl }:
buildRosPackage {
  pname = "ros-melodic-orocos-kinematics-dynamics";
  version = "1.4.0";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "orocos";
        repo = "orocos-kdl-release";
        rev = "release/melodic/orocos_kinematics_dynamics/1.4.0-0";
        sha256 = "sha256-Clvpb2zR9IeHpa/jY4Zi5+mw6TyA44iJ2xU1WMo4L3Y=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ orocos-kdl python-orocos-kdl ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package depends on a recent version of the Kinematics and Dynamics
    Library (KDL), distributed by the Orocos Project. It is a meta-package that
    depends on kdl which contains the c++ version and pykdl which contains the
    generated python bindings.'';
    license = with lib.licenses; [ "LGPL" ];
  };
}
