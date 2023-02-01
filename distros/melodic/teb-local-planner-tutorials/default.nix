
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, amcl, catkin, map-server, move-base, stage-ros, teb-local-planner }:
buildRosPackage {
  pname = "ros-melodic-teb-local-planner-tutorials";
  version = "0.2.4-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "rst-tu-dortmund";
        repo = "teb_local_planner_tutorials-release";
        rev = "release/melodic/teb_local_planner_tutorials/0.2.4-1";
        sha256 = "sha256-YT/10QNfUpXEzpyOqioa1CQ2IhIyesO+M2kh5gYDct8=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ amcl map-server move-base stage-ros teb-local-planner ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The teb_local_planner_tutorials package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
