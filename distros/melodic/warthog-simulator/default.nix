
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, warthog-gazebo }:
buildRosPackage {
  pname = "ros-melodic-warthog-simulator";
  version = "0.2.2-r2";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "clearpath-gbp";
        repo = "warthog_simulator-release";
        rev = "release/melodic/warthog_simulator/0.2.2-2";
        sha256 = "sha256-EInTf4WSk6cmFaouzRRac4kX4vUhFIXU2r5gvT4iQ+c=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ warthog-gazebo ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Packages for simulating Warthog'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
