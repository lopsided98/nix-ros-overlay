
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, gazebo-msgs, gazebo-plugins, gazebo-ros, gazebo-ros-control, gazebo-ros-pkgs, std-msgs }:
buildRosPackage {
  pname = "ros-melodic-rr-openrover-simulation";
  version = "1.1.1-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "RoverRobotics-release";
        repo = "rr_openrover_stack-release";
        rev = "release/melodic/rr_openrover_simulation/1.1.1-1";
        sha256 = "sha256-4GEQ8Npq7a1dNnz7d8uUO4ogzk6UDiQtE5CxROxliYY=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ gazebo-msgs gazebo-plugins gazebo-ros gazebo-ros-control gazebo-ros-pkgs std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The rr_openrover_simulation package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
