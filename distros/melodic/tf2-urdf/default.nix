
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, tf2, tf2-geometry-msgs, urdfdom-headers }:
buildRosPackage {
  pname = "ros-melodic-tf2-urdf";
  version = "0.1.1-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "standmit";
        repo = "tf2_urdf-release";
        rev = "release/melodic/tf2_urdf/0.1.1-1";
        sha256 = "sha256-CTvgw7cgd6H2vKpW+Q1qFqul14LgAerFUsWEWODsPqI=";
      };

  buildType = "catkin";
  buildInputs = [ catkin geometry-msgs urdfdom-headers ];
  propagatedBuildInputs = [ tf2 tf2-geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''tf2_urdf'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
