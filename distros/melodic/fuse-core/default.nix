
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, ceres-solver, eigen, fuse-msgs, pluginlib, rosconsole, roscpp, roslint, rostest }:
buildRosPackage {
  pname = "ros-melodic-fuse-core";
  version = "0.4.2-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "locusrobotics";
        repo = "fuse-release";
        rev = "release/melodic/fuse_core/0.4.2-1";
        sha256 = "sha256-drX6XfrXcl+tOUKRIRxs2H6r2H2bEOVoSG5hT58KIPo=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ roslint rostest ];
  propagatedBuildInputs = [ ceres-solver eigen fuse-msgs pluginlib rosconsole roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The fuse_core package provides the base class interfaces for the various fuse components. Concrete implementations of these
    interfaces are provided in other packages.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
