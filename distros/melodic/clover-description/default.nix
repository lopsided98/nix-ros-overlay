
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, gazebo-plugins, gazebo-ros, xacro }:
buildRosPackage {
  pname = "ros-melodic-clover-description";
  version = "0.21.2-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "CopterExpress";
        repo = "clover-release";
        rev = "release/melodic/clover_description/0.21.2-1";
        sha256 = "sha256-XRyIMMjkm2gtJ/Tpz2mGCz5opDHBzHmTUIJRWRJOF4g=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ gazebo-plugins gazebo-ros xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The clover_description package provides URDF models of the Clover series of quadcopters.'';
    license = with lib.licenses; [ mit ];
  };
}
